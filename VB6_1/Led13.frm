VERSION 5.00
Begin VB.Form Led13 
   BackColor       =   &H8000000A&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Led 13 Arduino"
   ClientHeight    =   3030
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   4830
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   ScaleHeight     =   3030
   ScaleWidth      =   4830
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   4320
      Top             =   2520
   End
   Begin VB.CheckBox Check1 
      Caption         =   "BLINK"
      Height          =   255
      Left            =   840
      TabIndex        =   2
      Top             =   2280
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
      Top             =   1440
      Width           =   1695
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   1215
      Left            =   2880
      Top             =   720
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
      Top             =   840
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
        Timer1.Interval = 500
        Timer1.Enabled = True
    Else
        Timer1.Enabled = False
    End If
End Sub

Private Sub Command1_Click()
    If Shape1.FillColor = vbBlack Then
        SendData "<LED13=ON>"
    Else
        SendData "<LED13=OFF>"
    End If
End Sub

Private Sub Form_Load()
    'SendData "<LED13?>"
End Sub

Function led_cmd_rx()
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
        SendData "<LED13=ON>"
    Else
        SendData "<LED13=OFF>"
    End If
End Sub
