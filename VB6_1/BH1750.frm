VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form BH1750 
   BackColor       =   &H80000010&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Light Sensor"
   ClientHeight    =   4410
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   7905
   LinkTopic       =   "Form9"
   MaxButton       =   0   'False
   ScaleHeight     =   4410
   ScaleWidth      =   7905
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "Update All"
      Height          =   495
      Left            =   720
      TabIndex        =   15
      Top             =   1800
      Width           =   1575
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   200
      Left            =   120
      Top             =   3840
   End
   Begin VB.Frame Frame2 
      Caption         =   "Resolution"
      Height          =   1815
      Left            =   2880
      TabIndex        =   9
      Top             =   480
      Width           =   1695
      Begin VB.OptionButton Option3 
         Caption         =   "L Res Mode"
         Height          =   375
         Left            =   120
         TabIndex        =   12
         Top             =   960
         Width           =   1335
      End
      Begin VB.OptionButton Option2 
         Caption         =   "H Res Mode 1"
         Height          =   195
         Left            =   120
         TabIndex        =   11
         Top             =   720
         Width           =   1335
      End
      Begin VB.OptionButton Option1 
         Caption         =   "H Res Mode 2"
         Height          =   255
         Left            =   120
         TabIndex        =   10
         Top             =   360
         Value           =   -1  'True
         Width           =   1455
      End
      Begin VB.Label Label7 
         Alignment       =   2  'Center
         BackColor       =   &H8000000D&
         Caption         =   "-"
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
         Left            =   120
         TabIndex        =   14
         Top             =   1440
         Width           =   1455
      End
   End
   Begin MSComctlLib.Slider Slider1 
      Height          =   495
      Left            =   480
      TabIndex        =   5
      Top             =   2760
      Width           =   4575
      _ExtentX        =   8070
      _ExtentY        =   873
      _Version        =   393216
      Max             =   50
   End
   Begin VB.Frame Frame1 
      Caption         =   "Reading"
      Height          =   2775
      Left            =   5160
      TabIndex        =   3
      Top             =   480
      Width           =   2535
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "Lux"
         Height          =   255
         Left            =   240
         TabIndex        =   8
         Top             =   360
         Width           =   735
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BackColor       =   &H8000000A&
         Caption         =   "-"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   26.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   240
         TabIndex        =   4
         Top             =   600
         Width           =   2055
      End
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Auto Update"
      Height          =   255
      Left            =   840
      TabIndex        =   2
      Top             =   840
      Width           =   1335
   End
   Begin MSComCtl2.UpDown UpDown1 
      Height          =   255
      Left            =   1920
      TabIndex        =   1
      Top             =   1200
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   450
      _Version        =   393216
      Value           =   1000
      BuddyControl    =   "Label1"
      BuddyDispid     =   196609
      OrigLeft        =   1920
      OrigTop         =   1200
      OrigRight       =   2175
      OrigBottom      =   1455
      Increment       =   200
      Max             =   5000
      Min             =   200
      SyncBuddy       =   -1  'True
      BuddyProperty   =   65537
      Enabled         =   -1  'True
   End
   Begin VB.Shape Shape2 
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   495
      Left            =   7200
      Top             =   3720
      Width           =   495
   End
   Begin VB.Shape Shape1 
      Height          =   855
      Left            =   720
      Top             =   720
      Width           =   1575
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
      Left            =   1440
      TabIndex        =   13
      Top             =   1200
      Width           =   495
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "-"
      Height          =   255
      Left            =   3840
      TabIndex        =   7
      Top             =   2520
      Width           =   1215
   End
   Begin VB.Label Label3 
      Caption         =   "Sensitivity:"
      Height          =   255
      Left            =   480
      TabIndex        =   6
      Top             =   2520
      Width           =   3255
   End
   Begin VB.Label Label1 
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
      Left            =   840
      TabIndex        =   0
      Top             =   1200
      Width           =   600
   End
End
Attribute VB_Name = "BH1750"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Function light_parse()
    Select Case id_string
        Case "LIGHT_SENS"
            Label4.Caption = Val(value_string)
        Case "LIGHT_READ"
            Label2.Caption = Val(value_string)
        Case "LIGHT_RES"
            Label7.Caption = value_string
        Case "LIGHT_START"
            If value_string = "DONE" Then
                Shape2.FillColor = vbGreen
            Else
                Shape2.FillColor = vbRed
            End If
    End Select

End Function

Private Sub Check1_Click()
    Timer1.Interval = Val(Label1.Caption)
    Timer1.Enabled = Check1.Value
End Sub

Private Sub Command1_Click()
    SendData "<LIGHT_START?>", TCA_BH1750
    'SendData "<LIGHT_SENS?>", TCA_BH1750
    'SendData "<LIGHT_RES?>", TCA_BH1750
    SendData "<LIGHT_READ?>", TCA_BH1750
End Sub

Private Sub Form_Load()
    SendData "<LIGHT_START=>", TCA_BH1750
End Sub

Private Sub Option1_Click()
    SendData "<LIGHT_RES=CHM2>", TCA_BH1750
End Sub

Private Sub Option2_Click()
    SendData "<LIGHT_RES=CHM>", TCA_BH1750
End Sub

Private Sub Option3_Click()
    SendData "<LIGHT_RES=CLM>", TCA_BH1750
End Sub

Private Sub Slider1_Click()
    Label4.Caption = Slider1.Value / 10
    SendData "<LIGHT_SENS=" & Slider1.Value & ">", TCA_BH1750
End Sub

Private Sub Timer1_Timer()
    SendData "<LIGHT_READ?>", TCA_BH1750
End Sub

Private Sub UpDown1_Change()
    Timer1.Interval = Val(Label1.Caption)
End Sub
