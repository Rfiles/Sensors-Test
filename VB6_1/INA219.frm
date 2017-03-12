VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form INA 
   BackColor       =   &H80000010&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "INA219"
   ClientHeight    =   4260
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   6000
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
   ScaleHeight     =   4260
   ScaleWidth      =   6000
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   Begin VB.CommandButton Command1 
      Caption         =   "Update All"
      Height          =   495
      Left            =   120
      TabIndex        =   15
      Top             =   3480
      Width           =   1695
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Auto Update"
      Height          =   255
      Left            =   3360
      TabIndex        =   14
      Top             =   3480
      Width           =   1695
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   5280
      Top             =   3720
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H80000000&
      Caption         =   "Readings:"
      Height          =   2655
      Left            =   1200
      TabIndex        =   0
      Top             =   240
      Width           =   3375
      Begin VB.Label Label12 
         Alignment       =   2  'Center
         Caption         =   "mA"
         Height          =   255
         Left            =   2280
         TabIndex        =   12
         Top             =   1920
         Width           =   615
      End
      Begin VB.Label Label11 
         Alignment       =   2  'Center
         Caption         =   "mV"
         Height          =   255
         Left            =   2280
         TabIndex        =   11
         Top             =   1440
         Width           =   615
      End
      Begin VB.Label Label10 
         Alignment       =   2  'Center
         Caption         =   "V"
         Height          =   255
         Left            =   2280
         TabIndex        =   10
         Top             =   960
         Width           =   615
      End
      Begin VB.Label Label9 
         Alignment       =   2  'Center
         Caption         =   "V"
         Height          =   255
         Left            =   2280
         TabIndex        =   9
         Top             =   480
         Width           =   615
      End
      Begin VB.Label Label8 
         Alignment       =   2  'Center
         Caption         =   "-"
         Height          =   255
         Left            =   1440
         TabIndex        =   8
         Top             =   1920
         Width           =   735
      End
      Begin VB.Label Label7 
         Alignment       =   2  'Center
         Caption         =   "-"
         Height          =   255
         Left            =   1440
         TabIndex        =   7
         Top             =   1440
         Width           =   735
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         Caption         =   "-"
         Height          =   255
         Left            =   1440
         TabIndex        =   6
         Top             =   960
         Width           =   735
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Caption         =   "-"
         Height          =   255
         Left            =   1440
         TabIndex        =   5
         Top             =   480
         Width           =   735
      End
      Begin VB.Label Label4 
         Caption         =   "ALOAD"
         Height          =   255
         Left            =   240
         TabIndex        =   4
         Top             =   1920
         Width           =   1095
      End
      Begin VB.Label Label3 
         Caption         =   "VSHUNT"
         Height          =   255
         Left            =   240
         TabIndex        =   3
         Top             =   1440
         Width           =   1095
      End
      Begin VB.Label Label2 
         Caption         =   "VLOAD"
         Height          =   255
         Left            =   240
         TabIndex        =   2
         Top             =   960
         Width           =   1095
      End
      Begin VB.Label Label1 
         Caption         =   "VBUS"
         Height          =   255
         Left            =   240
         TabIndex        =   1
         Top             =   480
         Width           =   1095
      End
   End
   Begin MSComCtl2.UpDown UpDown1 
      Height          =   255
      Left            =   4800
      TabIndex        =   13
      Top             =   3840
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   450
      _Version        =   393216
      Value           =   1000
      BuddyControl    =   "Label14"
      BuddyDispid     =   196626
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
   Begin VB.Shape Shape1 
      FillStyle       =   0  'Solid
      Height          =   495
      Left            =   5400
      Top             =   120
      Width           =   495
   End
   Begin VB.Label Label14 
      Alignment       =   2  'Center
      Caption         =   "1000"
      Height          =   255
      Left            =   3360
      TabIndex        =   17
      Top             =   3840
      Width           =   840
   End
   Begin VB.Label Label13 
      Alignment       =   2  'Center
      Caption         =   "ms"
      Height          =   255
      Left            =   4320
      TabIndex        =   16
      Top             =   3840
      Width           =   375
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   6000
      Y1              =   3360
      Y2              =   3360
   End
End
Attribute VB_Name = "INA"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Check1_Click()
    If Check1.Value = 1 Then
        Timer1.Enabled = True
        Timer1.Interval = UpDown1.Value
    Else
        Timer1.Enabled = False
    End If
    
End Sub

Private Sub Command1_Click()
    SendData "<INA_VBUS?>", TCA_INA
    SendData "<INA_VLOAD?>", TCA_NONE
    SendData "<INA_VSHUNT?>", TCA_NONE
    SendData "<INA_ALOAD?>", TCA_NONE
End Sub

Private Sub Form_Load()
    SendData "<INA_START=>", TCA_INA
    SendData "<INA_VBUS?>", TCA_INA
    SendData "<INA_VLOAD?>", TCA_NONE
    SendData "<INA_VSHUNT?>", TCA_NONE
    SendData "<INA_ALOAD?>", TCA_NONE
End Sub

Function Parse_INA()
    Select Case (id_string)
        Case "INA_START"
            Shape1.FillColor = vbGreen
        Case "INA_VLOAD"
            Label6.Caption = Val(value_string)
        Case "INA_VSHUNT"
            Label7.Caption = Val(value_string)
        Case "INA_VBUS"
            Label5.Caption = Val(value_string)
        Case "INA_ALOAD"
            Label8.Caption = Val(value_string)
    End Select
    
End Function

Private Sub Timer1_Timer()
    SendData "<INA_VBUS?>", TCA_INA
    SendData "<INA_VLOAD?>", TCA_NONE
    SendData "<INA_VSHUNT?>", TCA_NONE
    SendData "<INA_ALOAD?>", TCA_NONE
End Sub

Private Sub UpDown1_Change()
    Timer1.Interval = UpDown1.Value
End Sub
