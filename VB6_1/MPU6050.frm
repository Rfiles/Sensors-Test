VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form MPU 
   BackColor       =   &H80000010&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "MPU6050"
   ClientHeight    =   6060
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   10005
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   6060
   ScaleWidth      =   10005
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   375
      Left            =   4920
      TabIndex        =   21
      Top             =   5160
      Width           =   615
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Update All"
      Height          =   495
      Left            =   240
      TabIndex        =   9
      Top             =   5280
      Width           =   1335
   End
   Begin MSComCtl2.UpDown UpDown1 
      Height          =   255
      Left            =   3120
      TabIndex        =   8
      Top             =   5520
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   450
      _Version        =   393216
      Value           =   1000
      Increment       =   250
      Max             =   5000
      Min             =   250
      Enabled         =   -1  'True
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Auto Update"
      Height          =   255
      Left            =   1920
      TabIndex        =   5
      Top             =   5280
      Width           =   1455
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   0
      Top             =   0
   End
   Begin VB.Frame Frame2 
      Caption         =   "Gyroscope"
      Height          =   1815
      Left            =   600
      TabIndex        =   1
      Top             =   2520
      Width           =   8775
      Begin MSComctlLib.Slider Slider6 
         Height          =   495
         Left            =   480
         TabIndex        =   17
         Top             =   1200
         Width           =   8055
         _ExtentX        =   14208
         _ExtentY        =   873
         _Version        =   393216
         Max             =   65536
         TickFrequency   =   1000
      End
      Begin MSComctlLib.Slider Slider5 
         Height          =   495
         Left            =   480
         TabIndex        =   16
         Top             =   720
         Width           =   8055
         _ExtentX        =   14208
         _ExtentY        =   873
         _Version        =   393216
         Max             =   65536
         TickFrequency   =   1000
      End
      Begin MSComctlLib.Slider Slider4 
         Height          =   495
         Left            =   480
         TabIndex        =   15
         Top             =   240
         Width           =   8055
         _ExtentX        =   14208
         _ExtentY        =   873
         _Version        =   393216
         Max             =   65536
         TickFrequency   =   1000
      End
      Begin VB.Label Label10 
         Alignment       =   2  'Center
         Caption         =   "Z"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   20
         Top             =   1200
         Width           =   375
      End
      Begin VB.Label Label9 
         Alignment       =   2  'Center
         Caption         =   "Y"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   19
         Top             =   720
         Width           =   375
      End
      Begin VB.Label Label8 
         Alignment       =   2  'Center
         Caption         =   "X"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   18
         Top             =   240
         Width           =   375
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Accelerometer"
      Height          =   1935
      Left            =   600
      TabIndex        =   0
      Top             =   360
      Width           =   8775
      Begin MSComctlLib.Slider Slider3 
         Height          =   495
         Left            =   480
         TabIndex        =   4
         Top             =   1200
         Width           =   8055
         _ExtentX        =   14208
         _ExtentY        =   873
         _Version        =   393216
         Max             =   65536
         TickFrequency   =   1000
      End
      Begin MSComctlLib.Slider Slider2 
         Height          =   495
         Left            =   480
         TabIndex        =   3
         Top             =   720
         Width           =   8055
         _ExtentX        =   14208
         _ExtentY        =   873
         _Version        =   393216
         Max             =   65536
         TickFrequency   =   1000
      End
      Begin MSComctlLib.Slider Slider1 
         Height          =   495
         Left            =   480
         TabIndex        =   2
         Top             =   240
         Width           =   8055
         _ExtentX        =   14208
         _ExtentY        =   873
         _Version        =   393216
         Max             =   65536
         TickFrequency   =   1000
      End
      Begin VB.Label Label7 
         Alignment       =   2  'Center
         Caption         =   "Z"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   14
         Top             =   1200
         Width           =   375
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         Caption         =   "Y"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   13
         Top             =   720
         Width           =   375
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Caption         =   "X"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   12
         Top             =   240
         Width           =   375
      End
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "-"
      Height          =   255
      Left            =   3120
      TabIndex        =   11
      Top             =   4440
      Width           =   495
   End
   Begin VB.Label Label3 
      Caption         =   "MPU6050 Temperature ('C):"
      Height          =   255
      Left            =   600
      TabIndex        =   10
      Top             =   4440
      Width           =   2415
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   9960
      Y1              =   4920
      Y2              =   4920
   End
   Begin VB.Shape Shape1 
      Height          =   735
      Left            =   1800
      Top             =   5160
      Width           =   1695
   End
   Begin VB.Label Label2 
      Caption         =   "ms"
      Height          =   255
      Left            =   2640
      TabIndex        =   7
      Top             =   5520
      Width           =   375
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "1000"
      Height          =   255
      Left            =   1920
      TabIndex        =   6
      Top             =   5520
      Width           =   615
   End
End
Attribute VB_Name = "MPU"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Check1_Click()
    Timer1.Enabled = Check1.Value
End Sub

Private Sub Command1_Click()
    SendData "<MPU_AG?>", TCA_IMU
    SendData "<MPU_T?>", TCA_IMU
End Sub

Private Sub Command2_Click()
    Timer1.Interval = 5
End Sub

Private Sub Form_Load()
    SendData "<MPU_START=>", TCA_IMU
End Sub

Private Sub Timer1_Timer()
    SendData "<MPU_AG?>", TCA_IMU
    SendData "<MPU_T?>", TCA_IMU
End Sub

Private Sub UpDown1_Change()
    Timer1.Interval = UpDown1.Value
    Label1.Caption = UpDown1.Value
End Sub

Function Parse_MPU()
    Select Case id_string
        Case "MPU_T"
            Label4.Caption = Val(value_string)
        Case "MPU_AG"
            'Debug.Print value_string
            Sep1_Pos = InStr(value_string, ",")
            Sep2_Pos = InStr(Sep1_Pos + 1, value_string, ",")
            Sep3_Pos = InStr(Sep2_Pos + 1, value_string, ",")
            Sep4_Pos = InStr(Sep3_Pos + 1, value_string, ",")
            Sep5_Pos = InStr(Sep4_Pos + 1, value_string, ",")
            'Debug.Print Sep1_Pos, Sep2_Pos, Sep3_Pos, Sep4_Pos, Sep5_Pos
            Item1 = Left(value_string, Sep1_Pos - 1) + 32768
            Item2 = Mid(value_string, Sep1_Pos + 1, Sep2_Pos - Sep1_Pos - 1) + 32768
            Item3 = Mid(value_string, Sep2_Pos + 1, Sep3_Pos - Sep2_Pos - 1) + 32768
            Item4 = Mid(value_string, Sep3_Pos + 1, Sep4_Pos - Sep3_Pos - 1) + 32768
            Item5 = Mid(value_string, Sep4_Pos + 1, Sep5_Pos - Sep4_Pos - 1) + 32768
            Item6 = Right(value_string, Len(value_string) - Sep5_Pos) + 32768
            'Debug.Print Item1, Item2, Item3, Item4, Item5, Item6
            Slider1.Value = Val(Item1)
            Slider2.Value = Val(Item2)
            Slider3.Value = Val(Item3)
            Slider4.Value = Val(Item4)
            Slider5.Value = Val(Item5)
            Slider6.Value = Val(Item6)
            
    End Select
End Function
