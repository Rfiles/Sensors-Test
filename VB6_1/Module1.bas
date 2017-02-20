Attribute VB_Name = "Module1"
Dim parse_stat As Single
Dim isdata As Single
Public content As Single
Public id_string As String
Public value_string As String
Public rx_byte_count As Double
Public rx_counter As Long
Public tx_counter As Long

Function ParseInput(indata As String)
Dim loop1 As Single
'Debug.Print "indata " & Len(indata) & ": -> " & indata & " <-"
rx_byte_count = rx_byte_count + Len(indata)
rx_counter = rx_counter + Len(indata)
main.Label13.Caption = rx_counter & " Bytes "

For loop1 = 1 To Len(indata)
'Debug.Print Mid(indata, loop1, 1)
    Select Case (Mid(indata, loop1, 1))
        Case "<"
            parse_stat = 1   'command start
            isdata = 0
          '  Debug.Print("START")
        Case "="
            content = 1 ' Write()
            isdata = 0
          '  Debug.Print("WRITE")
        Case "?"
            content = 2 ' read
            isdata = 0
          '  Debug.Print("READ")
        Case ">"
            If parse_stat = 1 Then
                parse_stat = 2   ' command End; execute
                '     Debug.Print("STOP")
            Else
               ResetStrings                              ' command didnt start; abort
            End If
            isdata = 0
        Case vbCr                'ignore
        Case vbLf                'ignore
        Case Else
            isdata = 1 ' its data
            'Debug.Print("DATA")
    End Select

    If parse_stat = 1 And content = 0 And isdata = 1 Then id_string = id_string + Mid(indata, loop1, 1)     'its ID
    If parse_stat = 1 And content > 0 And isdata = 1 Then value_string = value_string + Mid(indata, loop1, 1)  'its Value
    If parse_stat = 2 And content = 0 Then ResetStrings                           'bad command (sem read ou write)
    If parse_stat = 2 And content > 0 And isdata = 0 Then ExecuteCommand            'command done
Next
            
End Function


Function ResetStrings()
    parse_stat = 0
    content = 0
    value_string = ""
    id_string = ""
    isdata = 0
    'Debug.Print ("Reset Called")
End Function
    
Function ExecuteCommand()

' content = 1 info para vb6  content = 0 pedido de info

    If main.menu_dbgin.Checked = True Then
        Debug.Print "Recebido(" & content & "): '" & id_string & "' com o valor '" & value_string & "'"
    End If
    
    Select Case id_string
    '-----------------------------------------------------------------
        Case "BOOT"
            If value_string = "DONE" Then
                main.Label1.Caption = "DEVICE READY"
                main.Shape1.FillColor = vbGreen
                SendData ("<ID1?>")
                SendData ("<LED13?>")
                main.menu_modulo.Enabled = True
                main.Timer1.Enabled = False
            End If
    '-----------------------------------------------------------------
        Case "ID1"
            main.Label4.Caption = value_string
    '-----------------------------------------------------------------
        Case "LED13"
            Led13.led_cmd_rx
        
    '-----------------------------------------------------------------
        Case "SERVO1"
            Servos.servos_rx
        Case "SERVO2"
            Servos.servos_rx
        Case "SERVO1_ISATTACHED"
            Servos.servos_rx
        Case "SERVO2_ISATTACHED"
            Servos.servos_rx
        Case "SERVO1_DETACH"
            Servos.servos_rx
        Case "SERVO2_DETACH"
            Servos.servos_rx

    '-----------------------------------------------------------------
    '-----------------------------------------------------------------
    '-----------------------------------------------------------------
        Case Else
    End Select
    
    '-----------------------------------------------------------------
    ' Start of Special Cases of Per Module Parsers
    '-----------------------------------------------------------------
    If Left(id_string, 6) = "ESERVO" Then
        EServos.eservos_rx
    End If
            
    '-----------------------------------------------------------------
    If Left(id_string, 6) = "ENABLE" And content = 1 Then
        main.Modules_Enabler
    End If
    
    '-----------------------------------------------------------------
    If Left(id_string, 3) = "RTC" And content = 1 Then
        Rtc.ParseInput
    End If

    '-----------------------------------------------------------------
    If (id_string = "CHECK" Or id_string = "AUTH" Or id_string = "DEBUGKEY") And content = 1 Then Validate.parse_cmd
    
    '-----------------------------------------------------------------
    If Left(id_string, 3) = "BME" And content = 1 Then
        BME.BME_Fill_Lists
    End If
        
    '-----------------------------------------------------------------
    If id_string = "I2C_SCAN" And content = 1 Then
        i2c_scanner.parse_i2cscan_normal
    End If
    If Left(id_string, (Len(id_string) - 1)) = "I2CSCAN_TCA" And content = 1 Then
        i2c_scanner.parse_i2cscan_tca
    End If
    
    '-----------------------------------------------------------------
    If Left(id_string, 5) = "LIGHT" And content = 1 Then
        BH1750.light_parse
    End If
    
        
    ResetStrings
End Function


Function SendData(Texto As String)
    If main.MSComm1.PortOpen Then
        'Main.RichTextBox1.SelColor = vbRed
        'Main.RichTextBox1.Text = Main.RichTextBox1.Text & "Tx: " & InBuffer
        'Main.RichTextBox1.SelStart = Len(Main.RichTextBox1.Text)
        'Main.RichTextBox1.SelColor = vbBlack
        main.MSComm1.Output = Texto
        main.Timer2.Enabled = True
        tx_counter = tx_counter + Len(Texto)
        main.Label12.Caption = tx_counter & " Bytes "
    End If
    If main.menu_dbgin.Checked = True Then
        Debug.Print "Enviado: " & Texto
    End If

End Function


