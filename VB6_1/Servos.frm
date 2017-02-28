VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Begin VB.Form Servos 
   BackColor       =   &H80000011&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Servo Control"
   ClientHeight    =   4320
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   4980
   FillColor       =   &H80000015&
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   ScaleHeight     =   4320
   ScaleWidth      =   4980
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command4 
      Caption         =   "Random"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3240
      TabIndex        =   7
      Top             =   720
      Width           =   1215
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Start / Stop"
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
      Left            =   1680
      TabIndex        =   6
      Top             =   2040
      Width           =   1935
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Start / Stop"
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
      Left            =   1680
      TabIndex        =   5
      Top             =   1440
      Width           =   1935
   End
   Begin VB.TextBox Text2 
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
      Height          =   375
      Left            =   3720
      TabIndex        =   4
      Text            =   "-"
      Top             =   2880
      Width           =   735
   End
   Begin VB.TextBox Text1 
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
      Height          =   375
      Left            =   1560
      TabIndex        =   3
      Text            =   "-"
      Top             =   240
      Width           =   735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Home"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3240
      TabIndex        =   2
      Top             =   240
      Width           =   1215
   End
   Begin MSComctlLib.Slider Slider2 
      Height          =   3255
      Left            =   600
      TabIndex        =   1
      Top             =   240
      Width           =   675
      _ExtentX        =   1191
      _ExtentY        =   5741
      _Version        =   393216
      Orientation     =   1
      Max             =   180
      SelStart        =   90
      TickStyle       =   2
      TickFrequency   =   5
      Value           =   90
   End
   Begin MSComctlLib.Slider Slider1 
      Height          =   675
      Left            =   1200
      TabIndex        =   0
      Top             =   3480
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   1191
      _Version        =   393216
      Max             =   180
      SelStart        =   90
      TickStyle       =   2
      TickFrequency   =   5
      Value           =   90
   End
   Begin VB.Shape Shape2 
      FillStyle       =   0  'Solid
      Height          =   495
      Left            =   3720
      Top             =   2040
      Width           =   615
   End
   Begin VB.Shape Shape1 
      FillStyle       =   0  'Solid
      Height          =   495
      Left            =   3720
      Top             =   1440
      Width           =   615
   End
End
Attribute VB_Name = "Servos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
SendData "<SERVO1=68>", TCA_NONE
SendData "<SERVO2=68>", TCA_NONE

End Sub

Private Sub Command2_Click()
    If Shape1.FillColor = vbRed Then
        SendData "<SERVO1_ATTACH=>", TCA_NONE
    Else
        SendData "<SERVO1_DETACH=>", TCA_NONE
    End If
End Sub

Private Sub Command3_Click()
    If Shape2.FillColor = vbRed Then
        SendData "<SERVO2_ATTACH=>", TCA_NONE
    Else
        SendData "<SERVO2_DETACH=>", TCA_NONE
    End If
End Sub

Private Sub Command4_Click()
    SendData "<SERVO1=" & Int(Rnd() * 180) & ">", TCA_NONE
    SendData "<SERVO2=" & Int(Rnd() * 180) & ">", TCA_NONE
End Sub

Private Sub Form_Load()
SendData "<SERVO1_ISATTACHED?>", TCA_NONE
SendData "<SERVO2_ISATTACHED?>", TCA_NONE

End Sub

Private Sub Slider1_Change()
SendData "<SERVO1=" & Slider1.Value & ">", TCA_NONE
End Sub

Private Sub Slider2_Change()
SendData "<SERVO2=" & Slider2.Value & ">", TCA_NONE
End Sub


Function servos_rx()
    If id_string = "SERVO1" And content = 1 Then
        Servos.Slider1.Value = Val(value_string)
        Servos.Text2.Text = Val(value_string)
    End If
    If id_string = "SERVO2" And content = 1 Then
        Servos.Slider2.Value = Val(value_string)
        Servos.Text1.Text = Val(value_string)
    End If
    If id_string = "SERVO1_ISATTACHED" And content = 1 Then
        If value_string = "YES" Then
            Servos.Shape1.FillColor = vbGreen
        Else
            Servos.Shape1.FillColor = vbRed
        End If
    End If
    If id_string = "SERVO2_ISATTACHED" And content = 1 Then
        If value_string = "YES" Then
            Servos.Shape2.FillColor = vbGreen
        Else
            Servos.Shape2.FillColor = vbRed
        End If
    End If
    If id_string = "SERVO1_DETACH" And content = 1 Then
        Servos.Shape1.FillColor = vbRed
    End If
    If id_string = "SERVO2_DETACH" And content = 1 Then
        Servos.Shape2.FillColor = vbRed
    End If
End Function

