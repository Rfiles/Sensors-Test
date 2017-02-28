VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form ADS 
   BackColor       =   &H8000000A&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "ADC 16bit ADS1115"
   ClientHeight    =   5640
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   9780
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
   ScaleHeight     =   5640
   ScaleWidth      =   9780
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   6120
      Top             =   4800
   End
   Begin VB.Frame Frame2 
      Caption         =   "Computed Readings"
      Height          =   3495
      Left            =   4080
      TabIndex        =   14
      Top             =   480
      Width           =   5295
      Begin MSComCtl2.UpDown UpDown3 
         Height          =   255
         Left            =   4920
         TabIndex        =   26
         Top             =   2760
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   450
         _Version        =   393216
         Value           =   187
         Max             =   200
         Min             =   150
         Enabled         =   -1  'True
      End
      Begin MSComCtl2.UpDown UpDown2 
         Height          =   255
         Left            =   4560
         TabIndex        =   25
         Top             =   2760
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   450
         _Version        =   393216
         Value           =   2500
         Increment       =   2
         Max             =   3000
         Min             =   2000
         Enabled         =   -1  'True
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Zero"
         Height          =   255
         Left            =   3840
         TabIndex        =   24
         Top             =   2760
         Width           =   615
      End
      Begin VB.Label Label21 
         Caption         =   "mV"
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   4920
         TabIndex        =   28
         Top             =   2520
         Width           =   255
      End
      Begin VB.Label Label20 
         Alignment       =   2  'Center
         Caption         =   "Z"
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   4560
         TabIndex        =   27
         Top             =   2520
         Width           =   255
      End
      Begin VB.Label Label19 
         Alignment       =   2  'Center
         BackColor       =   &H8000000A&
         Caption         =   "A"
         Height          =   255
         Left            =   3120
         TabIndex        =   23
         Top             =   2760
         Width           =   615
      End
      Begin VB.Label Label18 
         Alignment       =   2  'Center
         BackColor       =   &H8000000A&
         Caption         =   "-"
         Height          =   255
         Left            =   1680
         TabIndex        =   22
         Top             =   2760
         Width           =   1335
      End
      Begin VB.Label Label17 
         Alignment       =   2  'Center
         BackColor       =   &H8000000A&
         Caption         =   "-"
         Height          =   255
         Left            =   1680
         TabIndex        =   21
         Top             =   2040
         Width           =   1335
      End
      Begin VB.Label Label16 
         Alignment       =   2  'Center
         BackColor       =   &H8000000A&
         Caption         =   "-"
         Height          =   255
         Left            =   1680
         TabIndex        =   20
         Top             =   1320
         Width           =   1335
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         BackColor       =   &H8000000A&
         Caption         =   "-"
         Height          =   255
         Left            =   1680
         TabIndex        =   19
         Top             =   600
         Width           =   1335
      End
      Begin VB.Label Label14 
         BackColor       =   &H8000000A&
         Caption         =   "ACS 712 (5A)"
         Height          =   255
         Left            =   240
         TabIndex        =   18
         Top             =   2760
         Width           =   1335
      End
      Begin VB.Label Label13 
         BackColor       =   &H8000000A&
         Caption         =   "Microphone"
         Height          =   255
         Left            =   240
         TabIndex        =   17
         Top             =   2040
         Width           =   1335
      End
      Begin VB.Label Label12 
         BackColor       =   &H8000000A&
         Caption         =   "MQ-7"
         Height          =   255
         Left            =   240
         TabIndex        =   16
         Top             =   1320
         Width           =   1335
      End
      Begin VB.Label Label11 
         BackColor       =   &H8000000A&
         Caption         =   "MQ-135"
         Height          =   255
         Left            =   240
         TabIndex        =   15
         Top             =   600
         Width           =   1335
      End
   End
   Begin MSComCtl2.UpDown UpDown1 
      Height          =   255
      Left            =   5640
      TabIndex        =   13
      Top             =   5160
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   450
      _Version        =   393216
      Value           =   1000
      BuddyControl    =   "Label9"
      BuddyDispid     =   196633
      OrigLeft        =   5640
      OrigTop         =   5160
      OrigRight       =   5895
      OrigBottom      =   5415
      Increment       =   250
      Max             =   5000
      Min             =   250
      SyncBuddy       =   -1  'True
      BuddyProperty   =   65537
      Enabled         =   -1  'True
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Auto Update"
      Height          =   255
      Left            =   4200
      TabIndex        =   10
      Top             =   4800
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Update All"
      Height          =   495
      Left            =   360
      TabIndex        =   9
      Top             =   4800
      Width           =   1935
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H80000004&
      Caption         =   "Raw Readings"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3375
      Left            =   120
      TabIndex        =   0
      Top             =   480
      Width           =   3255
      Begin VB.Label Label8 
         Alignment       =   2  'Center
         BackColor       =   &H8000000A&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "-"
         Height          =   255
         Left            =   1800
         TabIndex        =   8
         Top             =   2760
         Width           =   1095
      End
      Begin VB.Label Label7 
         Alignment       =   2  'Center
         BackColor       =   &H8000000A&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "-"
         Height          =   255
         Left            =   1800
         TabIndex        =   7
         Top             =   2040
         Width           =   1095
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         BackColor       =   &H8000000A&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "-"
         Height          =   255
         Left            =   1800
         TabIndex        =   6
         Top             =   1320
         Width           =   1095
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         BackColor       =   &H8000000A&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "-"
         Height          =   255
         Left            =   1800
         TabIndex        =   5
         Top             =   600
         Width           =   1095
      End
      Begin VB.Label Label4 
         BackColor       =   &H8000000A&
         Caption         =   "Channel 4"
         Height          =   255
         Left            =   240
         TabIndex        =   4
         Top             =   2760
         Width           =   1215
      End
      Begin VB.Label Label3 
         BackColor       =   &H8000000A&
         Caption         =   "Channel 3"
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
         Left            =   240
         TabIndex        =   3
         Top             =   2040
         Width           =   1215
      End
      Begin VB.Label Label2 
         BackColor       =   &H8000000A&
         Caption         =   "Channel 2"
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
         Left            =   240
         TabIndex        =   2
         Top             =   1320
         Width           =   1215
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000A&
         Caption         =   "Channel 1"
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
         Left            =   240
         TabIndex        =   1
         Top             =   600
         Width           =   1215
      End
   End
   Begin VB.Label Label23 
      Caption         =   "Label23"
      Height          =   255
      Left            =   8040
      TabIndex        =   30
      Top             =   4080
      Width           =   735
   End
   Begin VB.Label Label22 
      Caption         =   "Label22"
      Height          =   255
      Left            =   6720
      TabIndex        =   29
      Top             =   4080
      Width           =   735
   End
   Begin VB.Shape Shape2 
      FillStyle       =   0  'Solid
      Height          =   495
      Left            =   9120
      Top             =   4920
      Width           =   495
   End
   Begin VB.Shape Shape1 
      Height          =   855
      Left            =   4080
      Top             =   4680
      Width           =   1935
   End
   Begin VB.Label Label10 
      Caption         =   "ms"
      Height          =   255
      Left            =   5160
      TabIndex        =   12
      Top             =   5160
      Width           =   375
   End
   Begin VB.Label Label9 
      Alignment       =   2  'Center
      Caption         =   "1000"
      Height          =   255
      Left            =   4200
      TabIndex        =   11
      Top             =   5160
      Width           =   840
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   9720
      Y1              =   4560
      Y2              =   4560
   End
End
Attribute VB_Name = "ADS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
    Dim mVperAmp As Integer '  = 185; use 100 for 20A Module and 66 for 30A Module
    Dim ACSoffset As Integer
    Dim Voltage As Double

Private Sub Check1_Click()
    If Check1.Value = 1 Then
        Timer1.Enabled = True
    Else
        Timer1.Interval = UpDown1.Value
        Timer1.Enabled = False
    End If
End Sub

Private Sub Command1_Click()
    SendData "<ADS_READS?>", TCA_ADS
End Sub

Private Sub Command2_Click()
    ACSoffset = Voltage
    UpDown2.Value = Voltage
End Sub

Private Sub Form_Load()
    mVperAmp = 187
    ACSoffset = 2472
    SendData "<ADS_START=>", TCA_ADS
    SendData "<ADS_READS?>", TCA_NONE
    UpDown2.Value = ACSoffset
    UpDown3.Value = mVperAmp
End Sub

Function parse_ads()
    Select Case id_string
        Case "ADS_START"
            Shape2.FillColor = vbGreen
        Case "ADS_READ1"
            Label5.Caption = Val(value_string)
        Case "ADS_READ2"
            Label6.Caption = Val(value_string)
        Case "ADS_READ3"
            Label7.Caption = Val(value_string)
        Case "ADS_READ4"
            Label8.Caption = Val(value_string)
            Calc_ACS712
            
    End Select
End Function

Function Calc_ACS712()
    Dim RawValue As Integer
    Dim Amps As Double
    RawValue = Val(Label8.Caption)
    Voltage = RawValue * 0.1875   'Gets you mV
    Debug.Print Voltage
    Amps = ((Voltage - ACSoffset) / mVperAmp) 'Gets you A
    Debug.Print Round(Amps, 3)
    Label18.Caption = Round(Amps, 3)
End Function

Private Sub Timer1_Timer()
    SendData "<ADS_READS?>", TCA_ADS
    Label22.Caption = UpDown2.Value
    Label23.Caption = UpDown3.Value
    
End Sub

Private Sub UpDown1_Change()
    Timer1.Interval = UpDown1.Value
End Sub

Private Sub UpDown2_Change()
    ACSoffset = UpDown2.Value
End Sub

Private Sub UpDown3_Change()
    mVperAmp = UpDown3.Value
End Sub
