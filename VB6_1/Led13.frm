VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form Led13 
   BackColor       =   &H8000000A&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Led 13 Arduino"
   ClientHeight    =   2895
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   4830
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   ScaleHeight     =   2895
   ScaleWidth      =   4830
   StartUpPosition =   2  'CenterScreen
   Begin MSComCtl2.UpDown UpDown1 
      Height          =   255
      Left            =   2280
      TabIndex        =   4
      Top             =   2160
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   450
      _Version        =   393216
      Value           =   1000
      BuddyControl    =   "Label1"
      BuddyDispid     =   196614
      OrigLeft        =   2280
      OrigTop         =   2520
      OrigRight       =   2535
      OrigBottom      =   2775
      Increment       =   100
      Max             =   5000
      Min             =   100
      SyncBuddy       =   -1  'True
      BuddyProperty   =   65537
      Enabled         =   -1  'True
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   4080
      Top             =   2040
   End
   Begin VB.CheckBox Check1 
      Caption         =   "BLINK"
      Height          =   255
      Left            =   840
      TabIndex        =   2
      Top             =   1800
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ON/OFF"
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
      Left            =   840
      TabIndex        =   1
      Top             =   960
      Width           =   1695
   End
   Begin VB.Shape Shape2 
      Height          =   855
      Left            =   720
      Top             =   1680
      Width           =   1935
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "ms"
      Height          =   255
      Left            =   1680
      TabIndex        =   5
      Top             =   2160
      Width           =   375
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "1000"
      Height          =   255
      Left            =   840
      TabIndex        =   3
      Top             =   2160
      Width           =   720
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   1215
      Left            =   2880
      Top             =   360
      Width           =   1335
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
      Left            =   1200
      TabIndex        =   0
      Top             =   360
      Width           =   975
   End
End
Attribute VB_Name = "Led13"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Check1_Click()
    If Check1.Value = 1 Then
        'Timer1.Interval = 500
        Timer1.Enabled = True
    Else
        Timer1.Enabled = False
    End If
End Sub

Private Sub Command1_Click()
    If Shape1.FillColor = vbBlack Then
        SendData "<LED13=ON>", TCA_NONE
    Else
        SendData "<LED13=OFF>", TCA_NONE
    End If
End Sub

Private Sub Form_Load()
    'SendData "<LED13?>"
End Sub

Function led_cmd_rx()
'usar case
    If value_string = "OFF" Then
        main.Shape2.FillColor = vbBlack
        Shape1.FillColor = vbBlack
    End If
    If value_string = "ON" Then
        main.Shape2.FillColor = vbRed
        Shape1.FillColor = vbRed
    End If
End Function

Private Sub Timer1_Timer()
    If Shape1.FillColor = vbBlack Then
        SendData "<LED13=ON>", TCA_NONE
    Else
        SendData "<LED13=OFF>", TCA_NONE
    End If
End Sub

Private Sub UpDown1_Change()
    Timer1.Interval = UpDown1.Value
End Sub
