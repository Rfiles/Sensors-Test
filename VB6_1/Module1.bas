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

    Debug.Print "Comando: '" & id_string & "' com o valor '" & value_string & "'"
    If id_string = "BOOT" And value_string = "DONE" Then
        Form1.Label1.Caption = "DEVICE READY"
        Form1.Shape1.FillColor = vbGreen
        SendData ("<ID1?>")
        SendData ("<LED13?>")
        Form1.menu_modulo.Enabled = True
        Form1.Timer1.Enabled = False
    End If
    If id_string = "ID1" And content = 1 Then
        Form1.Label4.Caption = value_string
    End If
    
    '-----------------------------------------------------------------
    If id_string = "LED13" And content = 1 Then
        If value_string = "OFF" Then
            Form1.Shape2.FillColor = vbBlack
            Form3.Shape1.FillColor = vbBlack
        End If
        If value_string = "ON" Then
            Form1.Shape2.FillColor = vbRed
            Form3.Shape1.FillColor = vbRed
        End If
    End If
    '-----------------------------------------------------------------

    If id_string = "SERVO1" And content = 1 Then
        Form2.Slider1.Value = Val(value_string)
        Form2.Text2.Text = Val(value_string)
    End If
    If id_string = "SERVO2" And content = 1 Then
        Form2.Slider2.Value = Val(value_string)
        Form2.Text1.Text = Val(value_string)
    End If
    If id_string = "SERVO1_ISATTACHED" And content = 1 Then
        If value_string = "YES" Then
            Form2.Shape1.FillColor = vbGreen
        Else
            Form2.Shape1.FillColor = vbRed
        End If
    End If
    If id_string = "SERVO2_ISATTACHED" And content = 1 Then
        If value_string = "YES" Then
            Form2.Shape2.FillColor = vbGreen
        Else
            Form2.Shape2.FillColor = vbRed
        End If
    End If
    If id_string = "SERVO1_DETACH" And content = 1 Then
        Form2.Shape1.FillColor = vbRed
    End If
    If id_string = "SERVO2_DETACH" And content = 1 Then
        Form2.Shape2.FillColor = vbRed
    End If
    '-----------------------------------------------------------------
    
    If id_string = "CHECK" And content = 1 Then
        Form4.Text2.Text = Val(value_string)
        Form4.Shape1.FillColor = vbRed
        Form4.Shape2.FillColor = vbGreen
        Form4.ValidateAuth
    End If
    If id_string = "AUTH" And content = 1 Then
        If value_string = "PASS" Then
            Form4.Shape1.FillColor = vbGreen
            Form4.Shape2.FillColor = vbGreen
            Form1.Shape3.FillColor = vbGreen
            Form1.Label7.Caption = "Authorized"
            Form4.Label1.Caption = 3
        End If
        If value_string = "FAIL" Then
            Form4.Shape1.FillColor = vbRed
            Form4.Shape2.FillColor = vbGreen
            Form1.Shape3.FillColor = vbRed
            Form1.Label7.Caption = "Fail"
            Form4.Label1.Caption = Val(Form4.Label1.Caption) - 1
        End If
        If value_string = "LOCK" Then
            Form4.Shape1.FillColor = vbRed
            Form4.Shape2.FillColor = vbRed
            Form1.Shape3.FillColor = vbRed
            Form1.Label7.Caption = "Locked"

        End If
    End If
    If id_string = "DEBUGKEY" And content = 1 Then
        Form4.Text1.Text = Val(value_string)
    End If
    
    '-----------------------------------------------------------------
    If Left(id_string, 3) = "BME" And content = 1 Then
        Form5.BME_Fill_Lists
    End If
        
    '-----------------------------------------------------------------
    If id_string = "I2C_SCAN" And content = 1 Then
        Form6.parse_i2cscan_normal
    End If
    If Left(id_string, 11) = "I2CSCAN_TCA" And content = 1 Then
        Form6.parse_i2cscan_tca
    End If
        
        
    ResetStrings
End Function


Function SendData(Texto As String)
    If Form1.MSComm1.PortOpen Then
        Form1.MSComm1.Output = Texto
    End If
End Function


