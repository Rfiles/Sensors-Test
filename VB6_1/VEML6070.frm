VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form UV 
   BackColor       =   &H80000010&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "UV Sensor"
   ClientHeight    =   3015
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   4560
   MaxButton       =   0   'False
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   120
      Top             =   2400
   End
   Begin VB.ListBox List1 
      Height          =   840
      ItemData        =   "VEML6070.frx":0000
      Left            =   2640
      List            =   "VEML6070.frx":0002
      TabIndex        =   6
      Top             =   1320
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Update All"
      Height          =   495
      Left            =   360
      TabIndex        =   5
      Top             =   1680
      Width           =   1575
   End
   Begin MSComCtl2.UpDown UpDown1 
      Height          =   255
      Left            =   1560
      TabIndex        =   3
      Top             =   840
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   450
      _Version        =   393216
      Value           =   1000
      BuddyControl    =   "Label2"
      BuddyDispid     =   196611
      OrigLeft        =   1320
      OrigTop         =   840
      OrigRight       =   1575
      OrigBottom      =   1095
      Increment       =   200
      Max             =   5000
      Min             =   200
      SyncBuddy       =   -1  'True
      BuddyProperty   =   65537
      Enabled         =   -1  'True
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Auto Update"
      Height          =   255
      Left            =   480
      TabIndex        =   1
      Top             =   480
      Width           =   1335
   End
   Begin VB.Shape Shape2 
      FillStyle       =   0  'Solid
      Height          =   495
      Left            =   3840
      Top             =   2400
      Width           =   495
   End
   Begin VB.Shape Shape1 
      Height          =   855
      Left            =   360
      Top             =   360
      Width           =   1575
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "ms"
      Height          =   255
      Left            =   1080
      TabIndex        =   4
      Top             =   840
      Width           =   375
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "1000"
      Height          =   255
      Left            =   480
      TabIndex        =   2
      Top             =   840
      Width           =   600
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "0"
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
      Left            =   2640
      TabIndex        =   0
      Top             =   360
      Width           =   1455
   End
End
Attribute VB_Name = "UV"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Check1_Click()
    Timer1.Interval = Val(Label2.Caption)
    Timer1.Enabled = Check1.Value
End Sub

Private Sub Command1_Click()
    SendData "<UV_READ?>", TCA_UV
    SendData "<UV_SETIT=" & List1.ListIndex & ">", TCA_UV
End Sub

Private Sub Form_Load()
    List1.AddItem "62,5 ms"
    List1.AddItem "125 ms"
    List1.AddItem "250 ms"
    List1.AddItem "500 ms"
    List1.ListIndex = 1
    SendData "<UV_START=>", TCA_UV
    SendData "<UV_SETIT=1>", TCA_UV

End Sub


Private Sub List1_Click()
    'Debug.Print List1.ListIndex
    SendData "<UV_INTTIME=" & List1.ListIndex & ">", TCA_UV
End Sub

Private Sub Timer1_Timer()
    SendData "<UV_READ?>", TCA_UV
End Sub

Function UV_Parse()
    
    Select Case (id_string)
        Case "UV_READ"
            Label1.Caption = Val(value_string)
        Case "UV_START"
            If value_string = "TRUE" Then
                Shape2.FillColor = vbGreen
            Else
                Shape2.FillColor = vbRed
            End If
        Case "UV_ITIME"
            List1.ListIndex = Val(value_string)
    End Select
    
End Function
