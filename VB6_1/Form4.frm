VERSION 5.00
Begin VB.Form Form4 
   BackColor       =   &H8000000A&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Validate Device"
   ClientHeight    =   2940
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   4485
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   ScaleHeight     =   2940
   ScaleWidth      =   4485
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Text4 
      Alignment       =   2  'Center
      Height          =   285
      Left            =   1680
      TabIndex        =   5
      Text            =   "Confirmation"
      Top             =   2040
      Width           =   1335
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      Height          =   285
      Left            =   1680
      TabIndex        =   4
      Text            =   "845"
      Top             =   1320
      Width           =   1335
   End
   Begin VB.TextBox Text2 
      Alignment       =   2  'Center
      Height          =   285
      Left            =   1680
      TabIndex        =   3
      Text            =   "Challenge"
      Top             =   1680
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      Height          =   285
      Left            =   1680
      TabIndex        =   2
      Text            =   "Expected Resp"
      Top             =   2400
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Validate"
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
      Left            =   720
      TabIndex        =   1
      Top             =   360
      Width           =   1935
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Tentativas"
      Height          =   375
      Left            =   3360
      TabIndex        =   11
      Top             =   1320
      Width           =   855
   End
   Begin VB.Label Label6 
      Caption         =   "Debug: Esperado"
      Height          =   255
      Left            =   240
      TabIndex        =   10
      Top             =   2400
      Width           =   1335
   End
   Begin VB.Label Label5 
      Caption         =   "Codigo Resposta"
      Height          =   255
      Left            =   240
      TabIndex        =   9
      Top             =   2040
      Width           =   1335
   End
   Begin VB.Label Label4 
      Caption         =   "Codigo Recebido"
      Height          =   255
      Left            =   240
      TabIndex        =   8
      Top             =   1680
      Width           =   1335
   End
   Begin VB.Label Label3 
      Caption         =   "Chave Secreta"
      Height          =   255
      Left            =   240
      TabIndex        =   7
      Top             =   1320
      Width           =   1335
   End
   Begin VB.Label Label2 
      Caption         =   "LOCK"
      Height          =   255
      Left            =   3360
      TabIndex        =   6
      Top             =   2400
      Width           =   495
   End
   Begin VB.Shape Shape2 
      FillStyle       =   0  'Solid
      Height          =   255
      Left            =   3960
      Top             =   2400
      Width           =   255
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H8000000D&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "3"
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
      Left            =   3360
      TabIndex        =   0
      Top             =   1560
      Width           =   855
   End
   Begin VB.Shape Shape1 
      FillStyle       =   0  'Solid
      Height          =   735
      Left            =   3360
      Top             =   240
      Width           =   855
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    SendData "<AUTH?>"
End Sub

Function ValidateAuth() As Integer
    ValidateAuth = (Val(Text2.Text) Xor Val(Text3.Text))
    Text4.Text = ValidateAuth
    SendData "<AUTH=" & ValidateAuth & ">"
End Function

Function parse_cmd()

    If id_string = "CHECK" Then
        Text2.Text = Val(value_string)
        Shape1.FillColor = vbRed
        Shape2.FillColor = vbGreen
        ValidateAuth
    End If
    If id_string = "AUTH" Then
        If value_string = "PASS" Then
            Shape1.FillColor = vbGreen
            Shape2.FillColor = vbGreen
            Form1.Shape3.FillColor = vbGreen
            Form1.Label7.Caption = "Authorized"
            Label1.Caption = 3
        End If
        If value_string = "FAIL" Then
            Shape1.FillColor = vbRed
            Shape2.FillColor = vbGreen
            Form1.Shape3.FillColor = vbRed
            Form1.Label7.Caption = "Fail"
            Label1.Caption = Val(Label1.Caption) - 1
        End If
        If value_string = "LOCK" Then
            Shape1.FillColor = vbRed
            Shape2.FillColor = vbRed
            Form1.Shape3.FillColor = vbRed
            Form1.Label7.Caption = "Locked"

        End If
    End If
    If id_string = "DEBUGKEY" Then
        Text1.Text = Val(value_string)
    End If
End Function

