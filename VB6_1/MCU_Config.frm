VERSION 5.00
Begin VB.Form MCU_Conf 
   BackColor       =   &H80000010&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "CHANGE MCU SETTINGS"
   ClientHeight    =   3180
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   5475
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3180
   ScaleWidth      =   5475
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   Begin VB.CheckBox Check1 
      Caption         =   "Free Time Debug"
      Height          =   255
      Left            =   3000
      TabIndex        =   3
      Top             =   480
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Save"
      Height          =   375
      Left            =   4200
      TabIndex        =   2
      Top             =   2640
      Width           =   1095
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   960
      MaxLength       =   8
      TabIndex        =   0
      Top             =   450
      Width           =   975
   End
   Begin VB.Shape Shape2 
      Height          =   2295
      Left            =   2640
      Top             =   240
      Width           =   2655
   End
   Begin VB.Shape Shape1 
      Height          =   2295
      Left            =   120
      Top             =   240
      Width           =   2535
   End
   Begin VB.Label Label1 
      Caption         =   "ID"
      Height          =   255
      Left            =   240
      TabIndex        =   1
      Top             =   480
      Width           =   615
   End
End
Attribute VB_Name = "MCU_Conf"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Check1_Click()
    If Check1.Value = 1 Then
        SendData "<FTR=ON>", TCA_NONE
    Else
        SendData "<FTR=OFF>", TCA_NONE
    End If
End Sub

Private Sub Command1_Click()
    SendData "<ID1=" & Text1.Text & ">", TCA_NONE
End Sub

Private Sub Form_Load()
    Text1.Text = main.Label4.Caption
    If FTR_Setting = True Then
        Check1.Value = 1
    Else
        Check1.Value = 0
    End If
End Sub
