VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form Main 
   BackColor       =   &H80000010&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Modules Tester - Arduino"
   ClientHeight    =   6480
   ClientLeft      =   45
   ClientTop       =   690
   ClientWidth     =   11565
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   6480
   ScaleWidth      =   11565
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer5 
      Enabled         =   0   'False
      Interval        =   5000
      Left            =   2640
      Top             =   5880
   End
   Begin VB.Timer Timer4 
      Enabled         =   0   'False
      Interval        =   15000
      Left            =   2160
      Top             =   5880
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Ping MCU every 15 seconds"
      Enabled         =   0   'False
      Height          =   255
      Left            =   8400
      TabIndex        =   25
      Top             =   2640
      Width           =   2535
   End
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   1680
      Top             =   5880
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   1200
      Top             =   5880
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
      TextRTF         =   $"Main.frx":0000
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   2000
      Left            =   720
      Top             =   5880
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Execute"
      Height          =   255
      Left            =   10080
      TabIndex        =   12
      Top             =   3240
      Width           =   735
   End
   Begin VB.TextBox Text4 
      Height          =   1575
      Left            =   8520
      MultiLine       =   -1  'True
      TabIndex        =   10
      Text            =   "Main.frx":0082
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
      Caption         =   "Clean"
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
      Caption         =   "Send"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5880
      TabIndex        =   0
      Top             =   840
      Width           =   1815
   End
   Begin MSCommLib.MSComm MSComm1 
      Left            =   120
      Top             =   5760
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
      BaudRate        =   115200
   End
   Begin VB.Label Label20 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "-"
      Height          =   255
      Left            =   5040
      TabIndex        =   28
      Top             =   4920
      Width           =   735
   End
   Begin VB.Label Label19 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Arduino Temperature ('C):"
      Height          =   255
      Left            =   3120
      TabIndex        =   27
      Top             =   4920
      Width           =   1935
   End
   Begin VB.Shape Shape6 
      Height          =   495
      Left            =   240
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Label18 
      Alignment       =   2  'Center
      Caption         =   "0"
      Height          =   255
      Left            =   10080
      TabIndex        =   26
      Top             =   1440
      Width           =   855
   End
   Begin VB.Label Label17 
      Alignment       =   2  'Center
      BackColor       =   &H80000016&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   4560
      TabIndex        =   24
      Top             =   360
      Width           =   735
   End
   Begin VB.Label Label16 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "MCU Idle Loop Since Last cmd (ms):"
      Height          =   255
      Left            =   1920
      TabIndex        =   23
      Top             =   360
      Width           =   2655
   End
   Begin VB.Label Label15 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "RX"
      Height          =   255
      Left            =   2280
      TabIndex        =   22
      Top             =   5160
      Width           =   375
   End
   Begin VB.Label Label14 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "TX"
      Height          =   255
      Left            =   2280
      TabIndex        =   21
      Top             =   4920
      Width           =   375
   End
   Begin VB.Label Label13 
      Alignment       =   1  'Right Justify
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Bytes Counter  "
      Height          =   255
      Left            =   720
      TabIndex        =   20
      Top             =   5160
      Width           =   1575
   End
   Begin VB.Label Label12 
      Alignment       =   1  'Right Justify
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Bytes Counter  "
      Height          =   255
      Left            =   720
      TabIndex        =   19
      Top             =   4920
      Width           =   1575
   End
   Begin VB.Label Label11 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "RX:"
      Height          =   255
      Left            =   6120
      TabIndex        =   18
      Top             =   360
      Width           =   375
   End
   Begin VB.Label Label10 
      Alignment       =   1  'Right Justify
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Data Rate"
      Height          =   255
      Left            =   6480
      TabIndex        =   17
      Top             =   360
      Width           =   1095
   End
   Begin VB.Label Label9 
      Caption         =   "Resp. Long?"
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
      Width           =   1575
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
      Caption         =   "Simulate RX"
      Height          =   255
      Left            =   8520
      TabIndex        =   11
      Top             =   3240
      Width           =   1335
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
      Caption         =   "Received Data:"
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
      Caption         =   "Settings"
      Begin VB.Menu menu_porta 
         Caption         =   "Comm Port"
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
      Begin VB.Menu menu_ardtemp 
         Caption         =   "Arduino Temperature"
         Enabled         =   0   'False
      End
      Begin VB.Menu menu_config 
         Caption         =   "Change MCU Config"
      End
   End
   Begin VB.Menu menu_modulo 
      Caption         =   "Module"
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
      Begin VB.Menu menu_light 
         Caption         =   "BH1750"
         Enabled         =   0   'False
      End
      Begin VB.Menu menu_uv 
         Caption         =   "VEML6050"
         Enabled         =   0   'False
      End
      Begin VB.Menu menu_rgb 
         Caption         =   "TCS34725"
         Enabled         =   0   'False
      End
      Begin VB.Menu menu_mlx 
         Caption         =   "MLX90614"
         Enabled         =   0   'False
      End
      Begin VB.Menu menu_ads 
         Caption         =   "ADS1115"
         Enabled         =   0   'False
      End
      Begin VB.Menu menu_ws 
         Caption         =   "WS2812B"
         Enabled         =   0   'False
      End
   End
End
Attribute VB_Name = "main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim LongResponse As Long
Dim FTR_Setting As Boolean

Function Modules_Enabler()
    If value_string = "BME" Then menu_bme.Enabled = True
    If value_string = "RTC" Then menu_rtc.Enabled = True
    If value_string = "INT_SERVO" Then menu_servo.Enabled = True
    If value_string = "I2CSCAN" Then menu_I2CScan.Enabled = True
    If value_string = "ESERVO" Then menu_eservo.Enabled = True
    If value_string = "BH1750" Then menu_light.Enabled = True
    If value_string = "UV" Then menu_uv.Enabled = True
    If value_string = "RGB" Then menu_rgb.Enabled = True
    If value_string = "MLX" Then menu_mlx.Enabled = True
    If value_string = "ATEMP" Then menu_ardtemp.Enabled = True
    If value_string = "ADS" Then menu_ads.Enabled = True
    If value_string = "WS" Then menu_ws.Enabled = True
    
End Function

Private Sub Check1_Click()
    If Shape1.FillColor = vbGreen Then
        Timer4.Enabled = Check1.Value
    End If
End Sub

Private Sub Command1_Click()
    SendData Text1.Text, TCA_NONE
End Sub

Private Sub Command2_Click()
    RichTextBox1.Text = ""
End Sub

Private Sub Command3_Click()
    If MSComm1.PortOpen = False Then
        Timer3.Enabled = True
        Shape1.FillColor = vbBlack
        MSComm1.CommPort = Val(Text3.Text)
        MSComm1.RThreshold = 1
        MSComm1.PortOpen = True
        Timer1.Enabled = True
        Label1.Caption = "A Iniciar"
        Command3.Caption = "Disconnect"
        RichTextBox1.Text = ""
    Else
        Timer3.Enabled = False
        Label10.Caption = "-"
        Label12.Caption = "-"
        Label13.Caption = "-"
        Label1.Caption = "Idle"
        MSComm1.PortOpen = False
        Shape1.FillColor = &H80FF&
        Label4.Caption = ""
        Command3.Caption = "Connect"
        Shape2.FillColor = vbBlack
        Shape3.FillColor = vbBlack
        Shape5.FillColor = vbBlack
        menu_modulo.Enabled = False
        Check1.Enabled = False
    End If
End Sub

Private Sub Command4_Click()
    ParseInput (Text4.Text)
End Sub

Private Sub Form_Load()
    TCA_NONE = 9    'invalid, will be ignored in MPU
    TCA_ADS = 3
    TCA_BH1750 = 2
    TCA_BME = 5
    TCA_MLX = 2
    TCA_RTC = 5
    TCA_TCS = 2
    TCA_UV = 2
    TCA_IMU = 7
    TCA_BMP = 6
    TCA_INA = 3
'    WS.Visible = True
End Sub

Private Sub menu_ads_Click()
    ADS.Visible = True
End Sub

Private Sub menu_ardtemp_Click()
    If menu_ardtemp.Checked = True Then
        menu_ardtemp.Checked = False
        Timer5.Enabled = False
    Else
        menu_ardtemp.Checked = True
        Timer5.Enabled = True
    End If
    SendData "<ARDU_TEMP?>", TCA_NONE
End Sub

Private Sub menu_bme_Click()
    BME.Visible = True
End Sub

Private Sub menu_config_Click()
    If Shape3.FillColor = vbGreen Then
        MCU_Conf.Visible = True
    Else
        MsgBox "You have to be autenticated to use this.", , "Warning"
        Validate.Visible = True
    End If
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
    EServos.Visible = True
End Sub


Private Sub menu_I2CScan_Click()
    i2c_scanner.Visible = True
End Sub

Private Sub menu_led13_Click()
    Led13.Visible = True
End Sub

Private Sub menu_light_Click()
    BH1750.Visible = True
End Sub

Private Sub menu_mlx_Click()
    MLX.Visible = True
End Sub

Private Sub menu_porta_Click()
    MsgBox "Not implemented.", , "Warning"
End Sub

Private Sub menu_rgb_Click()
    TCS.Visible = True
End Sub

Private Sub menu_rtc_Click()
    Rtc.Visible = True
End Sub

Private Sub menu_servo_Click()
    Servos.Visible = True
End Sub

Private Sub menu_uv_Click()
    UV.Visible = True
End Sub

Private Sub menu_validate_Click()
    Validate.Visible = True
End Sub

Private Sub menu_ws_Click()
    WS.Visible = True
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
    LongResponse = LongResponse + 1
    Label18 = LongResponse
    ResetStrings
    Timer2.Enabled = False
End Sub

Private Sub Timer3_Timer()
    Label10 = Round(((rx_byte_count * 8) / 1024), 2) & " kbps "
    rx_byte_count = 0
End Sub

Private Sub Timer4_Timer()
    SendData "<PING?>", TCA_NONE
End Sub

Private Sub Timer5_Timer()
    SendData "<ARDU_TEMP?>", TCA_NONE
End Sub
