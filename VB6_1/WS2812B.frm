VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form WS 
   BackColor       =   &H80000010&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Simple WS2812B Tester"
   ClientHeight    =   5160
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   9495
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
   ScaleHeight     =   5160
   ScaleWidth      =   9495
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   Begin VB.CommandButton Command3 
      Caption         =   "Reset"
      Height          =   495
      Left            =   5280
      TabIndex        =   15
      Top             =   2160
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Black All"
      Height          =   495
      Left            =   5280
      TabIndex        =   14
      Top             =   1560
      Width           =   1095
   End
   Begin MSComctlLib.Slider Slider6 
      Height          =   375
      Left            =   5280
      TabIndex        =   11
      Top             =   840
      Width           =   3495
      _ExtentX        =   6165
      _ExtentY        =   661
      _Version        =   393216
      Max             =   255
      SelStart        =   127
      Value           =   127
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   250
      Left            =   5280
      Top             =   4680
   End
   Begin MSComCtl2.UpDown UpDown1 
      Height          =   255
      Left            =   4800
      TabIndex        =   9
      Top             =   4800
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   450
      _Version        =   393216
      Value           =   500
      BuddyControl    =   "Label1"
      BuddyDispid     =   196623
      OrigLeft        =   4800
      OrigTop         =   4800
      OrigRight       =   5055
      OrigBottom      =   5055
      Increment       =   250
      Max             =   2000
      Min             =   250
      SyncBuddy       =   -1  'True
      BuddyProperty   =   65537
      Enabled         =   -1  'True
   End
   Begin VB.CheckBox Check1 
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
      Left            =   3360
      TabIndex        =   7
      Top             =   4440
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Update All"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   6
      Top             =   4440
      Width           =   1695
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H80000000&
      Caption         =   "Leds"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3015
      Left            =   600
      TabIndex        =   0
      Top             =   600
      Width           =   4215
      Begin MSComctlLib.Slider Slider5 
         Height          =   375
         Left            =   600
         TabIndex        =   5
         Top             =   2280
         Width           =   3135
         _ExtentX        =   5530
         _ExtentY        =   661
         _Version        =   393216
         Max             =   256
      End
      Begin MSComctlLib.Slider Slider4 
         Height          =   375
         Left            =   600
         TabIndex        =   4
         Top             =   1800
         Width           =   3135
         _ExtentX        =   5530
         _ExtentY        =   661
         _Version        =   393216
         Max             =   256
      End
      Begin MSComctlLib.Slider Slider3 
         Height          =   375
         Left            =   600
         TabIndex        =   3
         Top             =   1320
         Width           =   3135
         _ExtentX        =   5530
         _ExtentY        =   661
         _Version        =   393216
         Max             =   256
      End
      Begin MSComctlLib.Slider Slider2 
         Height          =   375
         Left            =   600
         TabIndex        =   2
         Top             =   840
         Width           =   3135
         _ExtentX        =   5530
         _ExtentY        =   661
         _Version        =   393216
         Max             =   256
      End
      Begin MSComctlLib.Slider Slider1 
         Height          =   375
         Left            =   600
         TabIndex        =   1
         Top             =   360
         Width           =   3135
         _ExtentX        =   5530
         _ExtentY        =   661
         _Version        =   393216
         Max             =   256
      End
      Begin VB.Shape Shape5 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   240
         Top             =   2280
         Width           =   255
      End
      Begin VB.Shape Shape4 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   240
         Top             =   1800
         Width           =   255
      End
      Begin VB.Shape Shape3 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   240
         Top             =   1320
         Width           =   255
      End
      Begin VB.Shape Shape2 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   240
         Top             =   840
         Width           =   255
      End
      Begin VB.Shape Shape1 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   240
         Top             =   360
         Width           =   255
      End
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "127"
      Height          =   255
      Left            =   7920
      TabIndex        =   13
      Top             =   600
      Width           =   855
   End
   Begin VB.Label Label3 
      Caption         =   "Brightness"
      Height          =   255
      Left            =   5280
      TabIndex        =   12
      Top             =   600
      Width           =   2535
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
      Left            =   4320
      TabIndex        =   10
      Top             =   4800
      Width           =   375
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "250"
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
      Left            =   3360
      TabIndex        =   8
      Top             =   4800
      Width           =   840
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   9480
      Y1              =   4320
      Y2              =   4320
   End
End
Attribute VB_Name = "WS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Check1_Click()
    If Check1.Value = 1 Then
        Timer1.Enabled = True
    Else
        Timer1.Enabled = False
    End If
End Sub

Private Sub Command1_Click()
    SendData "<WS_SLED=0>", TCA_NONE
    SendData "<WS_SCOLOR=" & Slider1.Value & ">", TCA_NONE
    
    SendData "<WS_SLED=1>", TCA_NONE
    SendData "<WS_SCOLOR=" & Slider2.Value & ">", TCA_NONE
    
    SendData "<WS_SLED=2>", TCA_NONE
    SendData "<WS_SCOLOR=" & Slider3.Value & ">", TCA_NONE
    
    SendData "<WS_SLED=3>", TCA_NONE
    SendData "<WS_SCOLOR=" & Slider4.Value & ">", TCA_NONE
    
    SendData "<WS_SLED=4>", TCA_NONE
    SendData "<WS_SCOLOR=" & Slider5.Value & ">", TCA_NONE
    
    SendData "<WS_SHOW=>", TCA_NONE
End Sub

Private Sub Command2_Click()
    SendData "<WS_CLEAR=>", TCA_NONE
    SendData "<WS_SHOW=>", TCA_NONE
End Sub

Private Sub Command3_Click()
    SendData "<WS_START=>", TCA_NONE
    SendData "<WS_CLEAR=>", TCA_NONE
End Sub

Private Sub Form_Load()
    SendData "<WS_START=>", TCA_NONE
    SendData "<WS_CLEAR=>", TCA_NONE

End Sub

Private Sub Slider1_Change()
    Shape1.FillColor = Slider1.Value
    SendData "<WS_SLED=0>", TCA_NONE
    SendData "<WS_SCOLOR=" & Slider1.Value & ">", TCA_NONE
End Sub


Private Sub Slider2_Change()
    Shape2.FillColor = Slider2.Value
    SendData "<WS_SLED=1>", TCA_NONE
    SendData "<WS_SCOLOR=" & Slider2.Value & ">", TCA_NONE
End Sub


Private Sub Slider3_Change()
    Shape3.FillColor = Slider3.Value
    SendData "<WS_SLED=2>", TCA_NONE
    SendData "<WS_SCOLOR=" & Slider3.Value & ">", TCA_NONE
End Sub

Private Sub Slider4_Change()
    Shape4.FillColor = Slider4.Value
    SendData "<WS_SLED=3>", TCA_NONE
    SendData "<WS_SCOLOR=" & Slider4.Value & ">", TCA_NONE
End Sub

Private Sub Slider5_Change()
    Shape5.FillColor = Slider5.Value
    SendData "<WS_SLED=4>", TCA_NONE
    SendData "<WS_SCOLOR=" & Slider5.Value & ">", TCA_NONE
End Sub

Private Sub Slider6_Change()
    SendData "<WS_SBRG=" & Slider6.Value & ">", TCA_NONE
    Label4.Caption = Slider6.Value
    SendData "<WS_SHOW=>", TCA_NONE
End Sub

Private Sub Timer1_Timer()
    SendData "<WS_SHOW=>", TCA_NONE
End Sub


Function Parse_WS()
'
End Function
