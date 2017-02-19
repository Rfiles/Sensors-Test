Attribute VB_Name = "Module1"
Dim parse_stat As Single
Dim isdata As Single
Public content As Single
Public id_string As String
Public value_string As String


Function ParseInput(indata As String)
Dim loop1 As Single
'Debug.Print "indata " & Len(indata) & ": -> " & indata & " <-"
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

    If Form1.menu_dbgin.Checked = True Then
        Debug.Print "Recebido(" & content & "): '" & id_string & "' com o valor '" & value_string & "'"
    End If
    
    Select Case id_string
    '-----------------------------------------------------------------
        Case "BOOT"
            If value_string = "DONE" Then
                Form1.Label1.Caption = "DEVICE READY"
                Form1.Shape1.FillColor = vbGreen
                SendData ("<ID1?>")
                SendData ("<LED13?>")
                Form1.menu_modulo.Enabled = True
                Form1.Timer1.Enabled = False
            End If
    '-----------------------------------------------------------------
        Case "ID1"
            Form1.Label4.Caption = value_string
    '-----------------------------------------------------------------
        Case "LED13"
            Form3.led_cmd_rx
        
    '-----------------------------------------------------------------
        Case "SERVO1"
            Form2.servos_rx
        Case "SERVO2"
            Form2.servos_rx
        Case "SERVO1_ISATTACHED"
            Form2.servos_rx
        Case "SERVO2_ISATTACHED"
            Form2.servos_rx
        Case "SERVO1_DETACH"
            Form2.servos_rx
        Case "SERVO2_DETACH"
            Form2.servos_rx

    '-----------------------------------------------------------------
    '-----------------------------------------------------------------
    '-----------------------------------------------------------------
        Case Else
    End Select
    
    '-----------------------------------------------------------------
    ' Start of Special Cases of Per Module Parsers
    '-----------------------------------------------------------------
    If Left(id_string, 5) = "ESERVO" And content = 1 Then
        Form8.eservos_rx
    End If
            
    '-----------------------------------------------------------------
    If Left(id_string, 6) = "ENABLE" And content = 1 Then
        Form1.Modules_Enabler
    End If
    
    '-----------------------------------------------------------------
    If Left(id_string, 3) = "RTC" And content = 1 Then
        Form7.ParseInput
    End If


    '-----------------------------------------------------------------
    If (id_string = "CHECK" Or id_string = "AUTH" Or id_string = "DEBUGKEY") And content = 1 Then Form4.parse_cmd
    
    '-----------------------------------------------------------------
    If Left(id_string, 3) = "BME" And content = 1 Then
        Form5.BME_Fill_Lists
    End If
        
    '-----------------------------------------------------------------
    If id_string = "I2C_SCAN" And content = 1 Then
        Form6.parse_i2cscan_normal
    End If
    If Left(id_string, (Len(id_string) - 1)) = "I2CSCAN_TCA" And content = 1 Then
        Form6.parse_i2cscan_tca
    End If
        
        
    ResetStrings
End Function


Function SendData(Texto As String)
    If Form1.MSComm1.PortOpen Then
        'Form1.RichTextBox1.SelColor = vbRed
        'Form1.RichTextBox1.Text = Form1.RichTextBox1.Text & "Tx: " & InBuffer
        'Form1.RichTextBox1.SelStart = Len(Form1.RichTextBox1.Text)
        'Form1.RichTextBox1.SelColor = vbBlack
        Form1.MSComm1.Output = Texto
        Form1.Timer2.Enabled = True
    End If
    If Form1.menu_dbgin.Checked = True Then
        Debug.Print "Enviado: " & Texto
    End If

End Function


