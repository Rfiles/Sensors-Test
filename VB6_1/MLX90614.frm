VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form MLX 
   BackColor       =   &H8000000A&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Infrared Temperature Sensor"
   ClientHeight    =   4485
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   4215
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4485
   ScaleWidth      =   4215
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   0
      Top             =   600
   End
   Begin MSComCtl2.UpDown UpDown1 
      Height          =   255
      Left            =   3600
      TabIndex        =   11
      Top             =   4080
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   450
      _Version        =   393216
      Value           =   250
      BuddyControl    =   "Label5"
      BuddyDispid     =   196622
      OrigLeft        =   3600
      OrigTop         =   4080
      OrigRight       =   3855
      OrigBottom      =   4335
      Increment       =   250
      Max             =   5000
      Min             =   250
      SyncBuddy       =   -1  'True
      BuddyProperty   =   65537
      Enabled         =   -1  'True
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Auto Update"
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
      Left            =   2400
      TabIndex        =   8
      Top             =   3720
      Width           =   1455
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   0
      Top             =   0
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
      Height          =   495
      Left            =   240
      TabIndex        =   7
      Top             =   3720
      Width           =   1695
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H80000016&
      Caption         =   "Temperature Readings"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2535
      Left            =   720
      TabIndex        =   0
      Top             =   360
      Width           =   2775
      Begin MSComctlLib.ProgressBar ProgressBar2 
         Height          =   375
         Left            =   240
         TabIndex        =   2
         Top             =   1560
         Width           =   2295
         _ExtentX        =   4048
         _ExtentY        =   661
         _Version        =   393216
         Appearance      =   1
         Max             =   300
         Scrolling       =   1
      End
      Begin MSComctlLib.ProgressBar ProgressBar1 
         Height          =   375
         Left            =   240
         TabIndex        =   1
         Top             =   600
         Width           =   2295
         _ExtentX        =   4048
         _ExtentY        =   661
         _Version        =   393216
         Appearance      =   1
         Scrolling       =   1
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         Caption         =   "-"
         Height          =   255
         Left            =   1680
         TabIndex        =   6
         Top             =   1320
         Width           =   855
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         Caption         =   "-"
         Height          =   255
         Left            =   1680
         TabIndex        =   5
         Top             =   360
         Width           =   855
      End
      Begin VB.Label Label2 
         Caption         =   "Object"
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
         Left            =   240
         TabIndex        =   4
         Top             =   1320
         Width           =   615
      End
      Begin VB.Label Label1 
         Caption         =   "Ambient"
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
         Left            =   240
         TabIndex        =   3
         Top             =   360
         Width           =   735
      End
   End
   Begin VB.Label Label7 
      Caption         =   "Movement Detected:"
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
      Left            =   960
      TabIndex        =   12
      Top             =   3000
      Width           =   1935
   End
   Begin VB.Shape Shape2 
      FillStyle       =   0  'Solid
      Height          =   255
      Left            =   3000
      Shape           =   5  'Rounded Square
      Top             =   3000
      Width           =   255
   End
   Begin VB.Shape Shape1 
      FillStyle       =   0  'Solid
      Height          =   255
      Left            =   3720
      Top             =   240
      Width           =   255
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      Caption         =   "ms"
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
      Left            =   3120
      TabIndex        =   10
      Top             =   4080
      Width           =   375
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Caption         =   "1000"
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
      Left            =   2400
      TabIndex        =   9
      Top             =   4080
      Width           =   600
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   4320
      Y1              =   3480
      Y2              =   3480
   End
End
Attribute VB_Name = "MLX"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Function mlx_parse()
    Select Case (id_string)
        Case "MLX_START"
            Shape1.FillColor = vbGreen
        Case "MLX_OBJ"
            If Val(value_string) > 500 Then
                Shape1.FillColor = vbRed
                Label4.Caption = " >> 'C"
                ProgressBar2.Value = ProgressBar2.Max
            Else
                If Abs((ProgressBar2.Value - Val(value_string))) > 0.25 Then
                    Shape2.FillColor = vbYellow
                    Timer2.Interval = UpDown1.Value + 1000
                    Timer2.Enabled = True
                End If
                Label4.Caption = Val(value_string) & " 'C"
                ProgressBar2.Value = Val(value_string)
            End If
        Case "MLX_AMB"
            If Val(value_string) > 500 Then
                Shape1.FillColor = vbRed
                Label3.Caption = " >> 'C"
                ProgressBar1.Value = ProgressBar1.Max
            Else
                Label3.Caption = Val(value_string) & " 'C"
                ProgressBar1.Value = Val(value_string)
            End If
    End Select
End Function

Private Sub Check1_Click()
    Timer1.Enabled = Check1.Value
End Sub

Private Sub Command1_Click()
    SendData "<MLX_AMB?>", TCA_MLX
    SendData "<MLX_OBJ?>", TCA_MLX
End Sub

Private Sub Form_Load()
    SendData "<MLX_START=>", TCA_MLX
    'SendData "<MLX_AMB?>", TCA_MLX
    'SendData "<MLX_OBJ?>", TCA_MLX
End Sub


Private Sub Timer1_Timer()
    SendData "<MLX_AMB?>", TCA_MLX
    SendData "<MLX_OBJ?>", TCA_MLX
End Sub

Private Sub Timer2_Timer()
    Shape2.FillColor = vbBlack
    Timer2.Enabled = False

End Sub

Private Sub UpDown1_Change()
    Timer1.Interval = UpDown1.Value
End Sub
