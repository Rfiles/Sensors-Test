VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Begin VB.Form EServos 
   BackColor       =   &H80000011&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Easer Servo Control"
   ClientHeight    =   4920
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   10305
   FillColor       =   &H0000FFFF&
   LinkTopic       =   "Form8"
   MaxButton       =   0   'False
   ScaleHeight     =   4920
   ScaleWidth      =   10305
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      BackColor       =   &H8000000A&
      Caption         =   "Misc"
      Height          =   2415
      Left            =   7560
      TabIndex        =   10
      Top             =   120
      Width           =   2535
      Begin VB.CheckBox Check2 
         Height          =   255
         Left            =   2160
         TabIndex        =   26
         Top             =   2040
         Width           =   255
      End
      Begin VB.CheckBox Check1 
         Height          =   255
         Left            =   2160
         TabIndex        =   25
         Top             =   1440
         Width           =   255
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Servo 2:"
         Height          =   255
         Left            =   120
         TabIndex        =   27
         Top             =   1800
         Width           =   2295
      End
      Begin VB.Shape Shape11 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   1800
         Top             =   2040
         Width           =   255
      End
      Begin VB.Label Label14 
         Caption         =   "Is Flip"
         Height          =   255
         Left            =   1200
         TabIndex        =   24
         Top             =   2040
         Width           =   495
      End
      Begin VB.Shape Shape10 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   840
         Top             =   2040
         Width           =   255
      End
      Begin VB.Label Label13 
         Caption         =   "Is Run"
         Height          =   255
         Left            =   120
         TabIndex        =   23
         Top             =   2040
         Width           =   615
      End
      Begin VB.Label Label12 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Servo 1:"
         Height          =   255
         Left            =   120
         TabIndex        =   22
         Top             =   1200
         Width           =   2295
      End
      Begin VB.Line Line1 
         X1              =   120
         X2              =   2400
         Y1              =   1080
         Y2              =   1080
      End
      Begin VB.Shape Shape9 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   1800
         Top             =   1440
         Width           =   255
      End
      Begin VB.Label Label11 
         Caption         =   "Is Flip"
         Height          =   255
         Left            =   1200
         TabIndex        =   21
         Top             =   1440
         Width           =   495
      End
      Begin VB.Shape Shape8 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   840
         Top             =   1440
         Width           =   255
      End
      Begin VB.Label Label10 
         Caption         =   "Is Run"
         Height          =   255
         Left            =   120
         TabIndex        =   20
         Top             =   1440
         Width           =   615
      End
      Begin VB.Shape Shape7 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   2160
         Top             =   720
         Width           =   255
      End
      Begin VB.Shape Shape2 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   2160
         Top             =   360
         Width           =   255
      End
      Begin VB.Label Label9 
         Caption         =   "2 Pos"
         Height          =   255
         Left            =   120
         TabIndex        =   19
         Top             =   720
         Width           =   615
      End
      Begin VB.Label Label8 
         Caption         =   "1 Pos"
         Height          =   255
         Left            =   120
         TabIndex        =   18
         Top             =   360
         Width           =   615
      End
      Begin VB.Label Label7 
         Height          =   255
         Left            =   840
         TabIndex        =   17
         Top             =   720
         Width           =   1215
      End
      Begin VB.Label Label6 
         Height          =   255
         Left            =   840
         TabIndex        =   16
         Top             =   360
         Width           =   1215
      End
   End
   Begin VB.CommandButton Command5 
      BackColor       =   &H0000FFFF&
      Caption         =   "STOP"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   8880
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   3960
      Width           =   1095
   End
   Begin MSComctlLib.Slider Slider4 
      Height          =   555
      Left            =   3120
      TabIndex        =   8
      Top             =   3720
      Width           =   3975
      _ExtentX        =   7011
      _ExtentY        =   979
      _Version        =   393216
      LargeChange     =   1000
      SmallChange     =   250
      Max             =   5000
      TickStyle       =   1
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider3 
      Height          =   4455
      Left            =   840
      TabIndex        =   7
      Top             =   240
      Width           =   675
      _ExtentX        =   1191
      _ExtentY        =   7858
      _Version        =   393216
      Orientation     =   1
      LargeChange     =   1000
      SmallChange     =   250
      Max             =   5000
      TickFrequency   =   100
   End
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
      Left            =   5880
      TabIndex        =   6
      Top             =   720
      Width           =   1215
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
      Left            =   3600
      TabIndex        =   5
      Top             =   960
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
      Left            =   7200
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
      Left            =   1800
      TabIndex        =   3
      Text            =   "-"
      Top             =   960
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
      Left            =   5880
      TabIndex        =   2
      Top             =   240
      Width           =   1215
   End
   Begin MSComctlLib.Slider Slider2 
      Height          =   3255
      Left            =   1800
      TabIndex        =   1
      Top             =   1440
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
      Left            =   3120
      TabIndex        =   0
      Top             =   2880
      Width           =   3975
      _ExtentX        =   7011
      _ExtentY        =   1191
      _Version        =   393216
      Max             =   180
      SelStart        =   90
      TickStyle       =   2
      TickFrequency   =   5
      Value           =   90
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "2"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   5040
      TabIndex        =   15
      Top             =   2160
      Width           =   615
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   120
      TabIndex        =   14
      Top             =   2040
      Width           =   495
   End
   Begin VB.Shape Shape6 
      Height          =   1575
      Left            =   3480
      Top             =   0
      Width           =   2175
   End
   Begin VB.Shape Shape5 
      Height          =   735
      Left            =   3600
      Top             =   120
      Width           =   1935
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "SERVOS ONLINE"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   495
      Left            =   3720
      TabIndex        =   13
      Top             =   240
      Width           =   1215
   End
   Begin VB.Shape Shape4 
      Height          =   4695
      Left            =   720
      Top             =   120
      Width           =   1935
   End
   Begin VB.Shape Shape3 
      Height          =   1695
      Left            =   3000
      Top             =   2760
      Width           =   5535
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      Height          =   375
      Left            =   1560
      TabIndex        =   12
      Top             =   240
      Width           =   975
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      Height          =   375
      Left            =   7200
      TabIndex        =   11
      Top             =   3720
      Width           =   1215
   End
   Begin VB.Shape Shape1 
      FillStyle       =   0  'Solid
      Height          =   495
      Left            =   4800
      Top             =   240
      Width           =   615
   End
End
Attribute VB_Name = "EServos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Check1_Click()
    If Check1.Value = 1 Then
        SendData "<ESERVO1_SETFLIP=TRUE>"
    Else
        SendData "<ESERVO1_SETFLIP=FALSE>"
    End If
End Sub

Private Sub Check2_Click()
    If Check2.Value = 1 Then
        SendData "<ESERVO2_SETFLIP=TRUE>"
    Else
        SendData "<ESERVO2_SETFLIP=FALSE>"
    End If
End Sub

Private Sub Command1_Click()
    Shape2.FillColor = vbRed
    Shape7.FillColor = vbRed
    SendData "<ESERVO1_ANGLE=70>"
    SendData "<ESERVO2_ANGLE=70>"
End Sub

Private Sub Command2_Click()
    If Shape1.FillColor = vbGreen Then
        SendData "<ESERVOS_LOOPEN=FALSE>"
    Else
        SendData "<ESERVOS_LOOPEN=TRUE>"
    End If
    
End Sub

Private Sub Command4_Click()
    Shape2.FillColor = vbRed
    Shape7.FillColor = vbRed
    SendData "<ESERVO1_ANGLE=" & Int(Rnd() * 180) & ">"
    SendData "<ESERVO2_ANGLE=" & Int(Rnd() * 180) & ">"

End Sub

Private Sub Command5_Click()
    SendData "<ESERVOS_LOOPEN=FALSE>"
End Sub

Private Sub Form_Load()
    SendData "<ESERVOS_START=>"
    SendData "<ESERVO1_DELAY=1000>"
    SendData "<ESERVO2_DELAY=1000>"
    Slider3.Value = 1000
    Slider4.Value = 1000
    SendData "<ESERVOS_LOOPEN=TRUE>"
    SendData "<ESERVO1_ISRUN?>"
    SendData "<ESERVO2_ISRUN?>"
End Sub

Private Sub Slider1_Change()
    SendData "<ESERVO1_ANGLE=" & Slider1.Value & ">"
    Shape7.FillColor = vbRed
End Sub

Private Sub Slider2_Change()
    SendData "<ESERVO2_ANGLE=" & Slider2.Value & ">"
    Shape2.FillColor = vbRed
End Sub

Function eservos_rx()
'usar case
    If id_string = "ESERVOS_START" Then
        Shape1.FillColor = vbGreen
    End If
    If id_string = "ESERVOS_LOOPEN" Then
        If value_string = "TRUE" Then
            Shape1.FillColor = vbGreen
        Else
            Shape1.FillColor = vbRed
        End If
    End If
    If id_string = "ESERVO1_GOTO" Then
        Text2.Text = Val(value_string)
        Slider1.Value = Val(value_string)
    End If
    If id_string = "ESERVO2_GOTO" Then
        Text1.Text = Val(value_string)
        Slider2.Value = Val(value_string)
    End If
    If id_string = "ESERVO1_DELAY" Then
        Label1.Caption = Val(value_string)
    End If
    If id_string = "ESERVO2_DELAY" Then
        Label2.Caption = Val(value_string)
    End If
    If id_string = "ESERVO1_ARR" Then
        Shape7.FillColor = vbGreen
        SendData "<ESERVO1_GETPOS?>"
    End If
    If id_string = "ESERVO2_ARR" Then
        Shape2.FillColor = vbGreen
        SendData "<ESERVO2_GETPOS?>"
    End If
    If id_string = "ESERVO1_GETPOS" Then
        Label7.Caption = Val(value_string)
    End If
    If id_string = "ESERVO2_GETPOS" Then
        Label6.Caption = Val(value_string)
    End If
    If id_string = "ESERVO1_ISRUN" Then
        If value_string = "TRUE" Then
            Shape8.FillColor = vbGreen
        Else
            Shape8.FillColor = vbRed
        End If
    End If
    If id_string = "ESERVO1_ISFLIP" Then
        If value_string = "TRUE" Then
            Shape9.FillColor = vbGreen
        Else
            Shape9.FillColor = vbRed
        End If
    End If
    If id_string = "ESERVO2_ISRUN" Then
        If value_string = "TRUE" Then
            Shape10.FillColor = vbGreen
            Check1.Value = 1
        Else
            Shape10.FillColor = vbRed
            Check1.Value = 0
        End If
    End If
    If id_string = "ESERVO2_ISFLIP" Then
        If value_string = "TRUE" Then
            Shape11.FillColor = vbGreen
            Check2.Value = 1
        Else
            Shape11.FillColor = vbRed
            Check2.Value = 0
        End If
    End If
    If id_string = "ESERVO1_SETFLIP" Then
        If value_string = "TRUE" Then
            Shape9.FillColor = vbGreen
        Else
            Shape9.FillColor = vbRed
        End If
    End If
    If id_string = "ESERVO2_SETFLIP" Then
        If value_string = "TRUE" Then
            Shape11.FillColor = vbGreen
        Else
            Shape11.FillColor = vbRed
        End If
    End If
    
    


End Function

Private Sub Slider3_Change()
    Label2.Caption = Slider3.Value
    SendData "<ESERVO2_DELAY=" & Slider3.Value & ">"
End Sub

Private Sub Slider4_Change()
    Label1.Caption = Slider4.Value
    SendData "<ESERVO1_DELAY=" & Slider4.Value & ">"
End Sub
