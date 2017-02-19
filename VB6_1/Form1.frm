VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form Form1 
   BackColor       =   &H80000010&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Comandos Arduino"
   ClientHeight    =   5670
   ClientLeft      =   45
   ClientTop       =   690
   ClientWidth     =   11565
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5670
   ScaleWidth      =   11565
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   1320
      Top             =   5040
   End
   Begin RichTextLib.RichTextBox RichTextBox1 
      Height          =   3375
      Left            =   720
      TabIndex        =   14
      Top             =   1440
      Width           =   6975
      _ExtentX        =   12303
      _ExtentY        =   5953
      _Version        =   393217
      Enabled         =   -1  'True
      ScrollBars      =   2
      TextRTF         =   $"Form1.frx":0000
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   2000
      Left            =   840
      Top             =   5040
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Send"
      Height          =   255
      Left            =   10080
      TabIndex        =   12
      Top             =   3240
      Width           =   615
   End
   Begin VB.TextBox Text4 
      Height          =   1575
      Left            =   8520
      MultiLine       =   -1  'True
      TabIndex        =   10
      Text            =   "Form1.frx":0082
      Top             =   3600
      Width           =   2295
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Connect"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   9360
      TabIndex        =   8
      Top             =   1920
      Width           =   1575
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   8400
      TabIndex        =   7
      Text            =   "6"
      Top             =   2160
      Width           =   855
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Limpar"
      Height          =   375
      Left            =   6240
      TabIndex        =   6
      Top             =   4920
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   720
      TabIndex        =   1
      Text            =   "<LED13=ON>"
      Top             =   840
      Width           =   5055
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ENVIAR"
      Height          =   495
      Left            =   5880
      TabIndex        =   0
      Top             =   840
      Width           =   1815
   End
   Begin MSCommLib.MSComm MSComm1 
      Left            =   120
      Top             =   5040
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
      BaudRate        =   115200
   End
   Begin VB.Label Label9 
      Caption         =   "Is Response Long?"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8400
      TabIndex        =   16
      Top             =   1440
      Width           =   2535
   End
   Begin VB.Shape Shape5 
      FillStyle       =   0  'Solid
      Height          =   255
      Left            =   8040
      Top             =   1440
      Width           =   255
   End
   Begin VB.Shape Shape4 
      Height          =   2175
      Left            =   8400
      Top             =   3120
      Width           =   2535
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      Caption         =   "Device ID"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   15
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Label7 
      Caption         =   "Autorization Status"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8400
      TabIndex        =   13
      Top             =   1080
      Width           =   2535
   End
   Begin VB.Shape Shape3 
      FillStyle       =   0  'Solid
      Height          =   255
      Left            =   8040
      Top             =   1080
      Width           =   255
   End
   Begin VB.Label Label6 
      Caption         =   "Simular Entradas"
      Height          =   255
      Left            =   8640
      TabIndex        =   11
      Top             =   3240
      Width           =   1215
   End
   Begin VB.Label Label5 
      Caption         =   "COM PORT"
      Height          =   255
      Left            =   8400
      TabIndex        =   9
      Top             =   1920
      Width           =   855
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   240
      TabIndex        =   5
      Top             =   360
      Width           =   1215
   End
   Begin VB.Label Label3 
      Caption         =   "LED 13"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8400
      TabIndex        =   4
      Top             =   720
      Width           =   2535
   End
   Begin VB.Shape Shape2 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   255
      Left            =   8040
      Top             =   720
      Width           =   255
   End
   Begin VB.Label Label2 
      Caption         =   "Dados Recebidos:"
      Height          =   255
      Left            =   720
      TabIndex        =   3
      Top             =   1200
      Width           =   1335
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H000080FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Left            =   8040
      Top             =   360
      Width           =   255
   End
   Begin VB.Label Label1 
      Caption         =   "Idle"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8400
      TabIndex        =   2
      Top             =   360
      Width           =   2535
   End
   Begin VB.Menu menu_ligacao 
      Caption         =   "Ligação"
      Begin VB.Menu menu_porta 
         Caption         =   "Porta"
      End
   End
   Begin VB.Menu menu_debug 
      Caption         =   "Debug"
      Begin VB.Menu menu_dbgout 
         Caption         =   "Output"
         Checked         =   -1  'True
      End
      Begin VB.Menu menu_dbgin 
         Caption         =   "Input"
         Checked         =   -1  'True
      End
   End
   Begin VB.Menu menu_modulo 
      Caption         =   "Modulo"
      Enabled         =   0   'False
      Begin VB.Menu menu_eservo 
         Caption         =   "Servos Easer"
         Enabled         =   0   'False
      End
      Begin VB.Menu menu_I2CScan 
         Caption         =   "I2C Scanner"
         Enabled         =   0   'False
      End
      Begin VB.Menu menu_servo 
         Caption         =   "Servos"
         Enabled         =   0   'False
      End
      Begin VB.Menu menu_led13 
         Caption         =   "Led13"
      End
      Begin VB.Menu menu_validate 
         Caption         =   "Validate"
      End
      Begin VB.Menu menu_bme 
         Caption         =   "BME280"
         Enabled         =   0   'False
      End
      Begin VB.Menu menu_rtc 
         Caption         =   "DS3231"
         Enabled         =   0   'False
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Function Modules_Enabler()
    If id_string = "ENABLE_BME" Then menu_bme.Enabled = True
    If id_string = "ENABLE_RTC" Then menu_rtc.Enabled = True
    If id_string = "ENABLE_INT_SERVO" Then menu_servo.Enabled = True
    If id_string = "ENABLE_I2CSCAN" Then menu_I2CScan.Enabled = True
    If id_string = "ENABLE_ESERVO" Then menu_eservo.Enabled = True

End Function


Private Sub Command1_Click()
    SendData Text1.Text
End Sub

Private Sub Command2_Click()
    'Text2.Text = ""
    RichTextBox1.Text = ""
End Sub

Private Sub Command3_Click()
    If MSComm1.PortOpen = False Then
        Shape1.FillColor = vbBlack
        MSComm1.CommPort = Val(Text3.Text)
        MSComm1.RThreshold = 1
        MSComm1.PortOpen = True
        Timer1.Enabled = True
        Label1.Caption = "A Iniciar"
        Command3.Caption = "Disconnect"
        'Text2.Text = ""
        RichTextBox1.Text = ""
    Else
        Label1.Caption = "Idle"
        MSComm1.PortOpen = False
        Shape1.FillColor = &H80FF&
        Label4.Caption = ""
        Command3.Caption = "Connect"
    End If
End Sub

Private Sub Command4_Click()
    ParseInput (Text4.Text)
End Sub

Private Sub Form_Load()
'    Form6.Visible = True
End Sub

Private Sub menu_bme_Click()
    Form5.Visible = True
End Sub

Private Sub menu_dbgin_Click()
    If menu_dbgin.Checked = True Then
        menu_dbgin.Checked = False
    Else
        menu_dbgin.Checked = True
    End If
End Sub

Private Sub menu_dbgout_Click()
    If menu_dbgout.Checked = True Then
        menu_dbgout.Checked = False
    Else
        menu_dbgout.Checked = True
    End If
End Sub

Private Sub menu_eservo_Click()
    Form8.Visible = True
End Sub

Private Sub menu_I2CScan_Click()
    Form6.Visible = True
End Sub

Private Sub menu_led13_Click()
    Form3.Visible = True
End Sub

Private Sub menu_rtc_Click()
    Form7.Visible = True
End Sub

Private Sub menu_servo_Click()
    Form2.Visible = True
End Sub

Private Sub menu_validate_Click()
    Form4.Visible = True
End Sub

Private Sub MSComm1_OnComm()
    Dim InBuffer As String
    InBuffer = MSComm1.Input
    If MSComm1.CommEvent = comEvReceive Then
        Timer2.Enabled = False
        Shape5.FillColor = vbGreen
        'Text2.Text = Text2.Text & InBuffer
        RichTextBox1.Text = RichTextBox1.Text & InBuffer
        RichTextBox1.SelStart = Len(RichTextBox1.Text)
        ParseInput (InBuffer)
    End If
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
   If MSComm1.PortOpen = True Then MSComm1.PortOpen = False
   End
   
End Sub


Private Sub Timer1_Timer()
    Timer1.Enabled = False
    Label1.Caption = "Connection Timeout"
    Shape1.FillColor = vbRed
    Command3.Caption = "Connect"
End Sub

Private Sub Timer2_Timer()
    Shape5.FillColor = vbRed
End Sub
