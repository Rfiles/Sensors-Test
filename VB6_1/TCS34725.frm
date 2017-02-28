VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form TCS 
   BackColor       =   &H80000010&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "TCS34725 - RGB SENSOR"
   ClientHeight    =   5970
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   8775
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
   ScaleHeight     =   5970
   ScaleWidth      =   8775
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command3 
      Caption         =   "Power"
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
      Left            =   4800
      TabIndex        =   31
      Top             =   5040
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Led Light"
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
      Left            =   6960
      TabIndex        =   29
      Top             =   5040
      Width           =   1455
   End
   Begin VB.Frame Frame2 
      Caption         =   "Calculated"
      Height          =   1455
      Left            =   480
      TabIndex        =   18
      Top             =   3000
      Width           =   4575
      Begin MSComctlLib.ProgressBar ProgressBar6 
         Height          =   375
         Left            =   840
         TabIndex        =   20
         Top             =   840
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   661
         _Version        =   393216
         Appearance      =   1
         Max             =   65536
         Scrolling       =   1
      End
      Begin MSComctlLib.ProgressBar ProgressBar5 
         Height          =   375
         Left            =   840
         TabIndex        =   19
         Top             =   360
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   661
         _Version        =   393216
         Appearance      =   1
         Max             =   65536
         Scrolling       =   1
      End
      Begin VB.Label Label16 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "-"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3480
         TabIndex        =   28
         Top             =   840
         Width           =   975
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "-"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3480
         TabIndex        =   27
         Top             =   360
         Width           =   975
      End
      Begin VB.Label Label10 
         Caption         =   "Color"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   22
         Top             =   960
         Width           =   615
      End
      Begin VB.Label Label9 
         Caption         =   "Lux"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   21
         Top             =   480
         Width           =   615
      End
   End
   Begin VB.ListBox List2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1035
      Left            =   5640
      TabIndex        =   16
      Top             =   720
      Width           =   1575
   End
   Begin VB.ListBox List1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2010
      ItemData        =   "TCS34725.frx":0000
      Left            =   5640
      List            =   "TCS34725.frx":0002
      TabIndex        =   14
      Top             =   2280
      Width           =   1575
   End
   Begin VB.Frame Frame1 
      Caption         =   "Light Readings"
      Height          =   2415
      Left            =   480
      TabIndex        =   5
      Top             =   360
      Width           =   4575
      Begin MSComctlLib.ProgressBar ProgressBar4 
         Height          =   375
         Left            =   840
         TabIndex        =   9
         Top             =   1800
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   661
         _Version        =   393216
         Appearance      =   1
         Max             =   65536
         Scrolling       =   1
      End
      Begin MSComctlLib.ProgressBar ProgressBar3 
         Height          =   375
         Left            =   840
         TabIndex        =   8
         Top             =   1320
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   661
         _Version        =   393216
         Appearance      =   1
         Max             =   65536
         Scrolling       =   1
      End
      Begin MSComctlLib.ProgressBar ProgressBar2 
         Height          =   375
         Left            =   840
         TabIndex        =   7
         Top             =   840
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   661
         _Version        =   393216
         Appearance      =   1
         Max             =   65536
         Scrolling       =   1
      End
      Begin MSComctlLib.ProgressBar ProgressBar1 
         Height          =   375
         Left            =   840
         TabIndex        =   6
         Top             =   360
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   661
         _Version        =   393216
         Appearance      =   1
         Max             =   65536
         Scrolling       =   1
      End
      Begin VB.Label Label14 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "-"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3480
         TabIndex        =   26
         Top             =   1800
         Width           =   975
      End
      Begin VB.Label Label13 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "-"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3480
         TabIndex        =   25
         Top             =   1320
         Width           =   975
      End
      Begin VB.Label Label12 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "-"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3480
         TabIndex        =   24
         Top             =   840
         Width           =   975
      End
      Begin VB.Label Label11 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "-"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3480
         TabIndex        =   23
         Top             =   360
         Width           =   975
      End
      Begin VB.Label Label6 
         Caption         =   "Clear"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   13
         Top             =   1920
         Width           =   495
      End
      Begin VB.Label Label5 
         Caption         =   "Blue"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   12
         Top             =   1440
         Width           =   495
      End
      Begin VB.Label Label4 
         Caption         =   "Green"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   11
         Top             =   960
         Width           =   495
      End
      Begin VB.Label Label3 
         Caption         =   "Red"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   10
         Top             =   480
         Width           =   495
      End
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   0
      Top             =   0
   End
   Begin MSComCtl2.UpDown UpDown1 
      Height          =   255
      Left            =   3600
      TabIndex        =   4
      Top             =   5400
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   450
      _Version        =   393216
      Value           =   1000
      BuddyControl    =   "Label1"
      BuddyDispid     =   196645
      OrigLeft        =   3600
      OrigTop         =   5400
      OrigRight       =   3855
      OrigBottom      =   5655
      Increment       =   250
      Max             =   5000
      Min             =   500
      SyncBuddy       =   -1  'True
      BuddyProperty   =   65537
      Enabled         =   -1  'True
   End
   Begin VB.CheckBox Check2 
      Caption         =   "Auto Update"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2400
      TabIndex        =   1
      Top             =   5040
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Update All"
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
      Left            =   480
      TabIndex        =   0
      Top             =   5040
      Width           =   1455
   End
   Begin VB.Label Label21 
      Alignment       =   2  'Center
      Height          =   255
      Left            =   7560
      TabIndex        =   35
      Top             =   1320
      Width           =   1095
   End
   Begin VB.Shape Shape5 
      FillStyle       =   0  'Solid
      Height          =   255
      Left            =   2760
      Top             =   0
      Width           =   255
   End
   Begin VB.Label Label20 
      Caption         =   "Module Connection:"
      Height          =   255
      Left            =   1080
      TabIndex        =   34
      Top             =   0
      Width           =   1695
   End
   Begin VB.Label Label19 
      Alignment       =   2  'Center
      Caption         =   "-"
      Height          =   255
      Left            =   7560
      TabIndex        =   33
      Top             =   3600
      Width           =   975
   End
   Begin VB.Label Label18 
      Alignment       =   2  'Center
      Caption         =   "Chip ID"
      Height          =   255
      Left            =   7560
      TabIndex        =   32
      Top             =   3360
      Width           =   975
   End
   Begin VB.Shape Shape4 
      FillStyle       =   0  'Solid
      Height          =   855
      Left            =   4680
      Top             =   4920
      Width           =   1695
   End
   Begin VB.Label Label17 
      BackStyle       =   0  'Transparent
      Caption         =   "to avoid hangup"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   7800
      TabIndex        =   30
      Top             =   1920
      Width           =   975
   End
   Begin VB.Line Line4 
      X1              =   7560
      X2              =   7680
      Y1              =   2400
      Y2              =   2520
   End
   Begin VB.Line Line3 
      X1              =   7560
      X2              =   7680
      Y1              =   2400
      Y2              =   2280
   End
   Begin VB.Line Line2 
      X1              =   8040
      X2              =   7560
      Y1              =   2400
      Y2              =   2400
   End
   Begin VB.Shape Shape3 
      FillStyle       =   0  'Solid
      Height          =   855
      Left            =   6840
      Top             =   4920
      Width           =   1695
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      Caption         =   "Gain"
      Height          =   255
      Left            =   5640
      TabIndex        =   17
      Top             =   480
      Width           =   1575
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      Caption         =   "Integration Time"
      Height          =   255
      Left            =   5640
      TabIndex        =   15
      Top             =   2040
      Width           =   1575
   End
   Begin VB.Shape Shape2 
      Height          =   855
      Left            =   2280
      Top             =   4920
      Width           =   1695
   End
   Begin VB.Label Label2 
      Caption         =   "ms"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3120
      TabIndex        =   3
      Top             =   5400
      Width           =   375
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "1000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2400
      TabIndex        =   2
      Top             =   5400
      Width           =   720
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   8760
      Y1              =   4680
      Y2              =   4680
   End
   Begin VB.Shape Shape1 
      FillStyle       =   0  'Solid
      Height          =   855
      Left            =   7680
      Shape           =   5  'Rounded Square
      Top             =   360
      Width           =   855
   End
End
Attribute VB_Name = "TCS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Check2_Click()
    Timer1.Enabled = Check2.Value
End Sub

Private Sub Command1_Click()
    SendData "<RGB_READ_1?>", TCA_TCS
    SendData "<RGB_READ_2?>", TCA_TCS
    Set_Color
End Sub

Private Sub Command2_Click()
    If Shape3.FillColor = vbRed Then
        Shape3.FillColor = vbGreen
        SendData "<RGB_LED=ON>", TCA_TCS
    Else
        Shape3.FillColor = vbRed
        SendData "<RGB_LED=OFF>", TCA_TCS
    End If

End Sub

Private Sub Command3_Click()
    If Shape4.FillColor = vbRed Then
        Shape4.FillColor = vbGreen
        SendData "<RGB_PWR=ON>", TCA_TCS
    Else
        Shape4.FillColor = vbRed
        SendData "<RGB_PWR=OFF>", TCA_TCS
    End If
    
End Sub

Private Sub Form_Load()
    SendData "<RGB_START=>", TCA_TCS
    SendData "<RGB_ID?>", TCA_TCS
    List1.AddItem "2.4 ms"
    List1.AddItem "24 ms"
    List1.AddItem "50 ms"
    List1.AddItem "101 ms"
    List1.AddItem "154 ms"
    List1.AddItem "700 ms"
    List2.AddItem "1x"
    List2.AddItem "4x"
    List2.AddItem "16x"
    List2.AddItem "60x"
    List1.ListIndex = 0
    List2.ListIndex = 0
    'ir = (r + g + b > c) ? (r + g + b - c) / 2 : 0;
    
End Sub

Function RGB_Parse()

    Select Case (id_string)
        Case "RGB_START"
            If value_string = "TRUE" Then
                Shape5.FillColor = vbGreen
            Else
                Shape5.FillColor = vbRed
            End If
        Case "RGB_R"
            ProgressBar1.Value = Val(value_string)
            Label11.Caption = Val(value_string)
        Case "RGB_G"
            ProgressBar2.Value = Val(value_string)
            Label12.Caption = Val(value_string)
        Case "RGB_B"
            ProgressBar3.Value = Val(value_string)
            Label13.Caption = Val(value_string)
        Case "RGB_C"
            ProgressBar4.Value = Val(value_string)
            Label14.Caption = Val(value_string)
        Case "RGB_IT"
        Case "RGB_GAIN"
            'SendData "<RGB_GAIN=" & List2.ListIndex & ">"
        Case "RGB_PWR"
            If value_string = "ON" Then
                Shape4.FillColor = vbGreen
            Else
                Shape4.FillColor = vbRed
            End If
        Case "RGB_LED"
            If value_string = "ON" Then
                Shape3.FillColor = vbGreen
            Else
                Shape3.FillColor = vbRed
            End If
        Case "RGB_LUX"
            ProgressBar5.Value = Val(value_string)
            Label15.Caption = Val(value_string)
        Case "RGB_TEMP"
            ProgressBar6.Value = Val(value_string)
            Label16.Caption = Val(value_string)
        Case "RGB_ID"
            Label19.Caption = value_string
    End Select


End Function

Private Sub List1_Click()
    'Debug.Print List1.List(List1.ListIndex)
    'Debug.Print List1.ItemData(List1.ListIndex)
    Select Case (List1.ListIndex)
        Case 0
            SendData "<RGB_IT=255>", TCA_TCS
        Case 1
            SendData "<RGB_IT=246>", TCA_TCS
        Case 2
            SendData "<RGB_IT=235>", TCA_TCS
        Case 3
            SendData "<RGB_IT=213>", TCA_TCS
        Case 4
            SendData "<RGB_IT=192>", TCA_TCS
        Case 5
            SendData "<RGB_IT=0>", TCA_TCS
    End Select
End Sub

Private Sub List2_Click()
    SendData "<RGB_GAIN=" & List2.ListIndex & ">", TCA_TCS
    
End Sub

Private Sub Timer1_Timer()
    SendData "<RGB_READ_1?>", TCA_TCS
    SendData "<RGB_READ_2?>", TCA_TCS
    Set_Color
End Sub

Private Sub UpDown1_Change()
    Timer1.Interval = UpDown1.Value
End Sub

Function Set_Color()
    If Label14.Caption <> "-" Then
        c = Val(Label14.Caption) / 2
        r = Val(Label11.Caption) / 2
        g = Val(Label12.Caption) / 2
        b = Val(Label13.Caption) / 2
        calc = RGB(r, g, b)
        Shape1.FillColor = calc
        Label21.Caption = Hex(calc)
    End If
End Function
