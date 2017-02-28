VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form BME 
   BackColor       =   &H80000010&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "BME280"
   ClientHeight    =   5520
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   10425
   LinkTopic       =   "Form5"
   MaxButton       =   0   'False
   ScaleHeight     =   5520
   ScaleWidth      =   10425
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "Auto Update"
      Height          =   375
      Left            =   5400
      TabIndex        =   26
      Top             =   360
      Width           =   1215
   End
   Begin VB.Frame Frame4 
      BackColor       =   &H80000010&
      Caption         =   "Calculated"
      Height          =   1695
      Left            =   6840
      TabIndex        =   19
      Top             =   3600
      Width           =   3375
      Begin MSComctlLib.ProgressBar ProgressBar5 
         Height          =   375
         Left            =   120
         TabIndex        =   25
         Top             =   1200
         Width           =   3135
         _ExtentX        =   5530
         _ExtentY        =   661
         _Version        =   393216
         Appearance      =   1
         Min             =   1e-4
         Max             =   40
         Scrolling       =   1
      End
      Begin MSComctlLib.ProgressBar ProgressBar4 
         Height          =   375
         Left            =   120
         TabIndex        =   22
         Top             =   480
         Width           =   3135
         _ExtentX        =   5530
         _ExtentY        =   661
         _Version        =   393216
         Appearance      =   1
         Min             =   1e-4
         Max             =   500
         Scrolling       =   1
      End
      Begin VB.Label Label13 
         Caption         =   "Label13"
         Height          =   255
         Left            =   1440
         TabIndex        =   24
         Top             =   960
         Width           =   1815
      End
      Begin VB.Label Label12 
         Caption         =   "Dew Point"
         Height          =   255
         Left            =   120
         TabIndex        =   23
         Top             =   960
         Width           =   855
      End
      Begin VB.Label Label11 
         Caption         =   "Label11"
         Height          =   255
         Left            =   1440
         TabIndex        =   21
         Top             =   240
         Width           =   1815
      End
      Begin VB.Label Label10 
         Caption         =   "Altitude"
         Height          =   255
         Left            =   120
         TabIndex        =   20
         Top             =   240
         Width           =   615
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Update All"
      Height          =   375
      Left            =   5280
      TabIndex        =   18
      Top             =   1920
      Width           =   1455
   End
   Begin MSComCtl2.UpDown UpDown1 
      Height          =   375
      Left            =   6240
      TabIndex        =   13
      Top             =   1080
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   661
      _Version        =   393216
      Value           =   1000
      BuddyControl    =   "Label6"
      BuddyDispid     =   196630
      OrigLeft        =   7920
      OrigTop         =   5160
      OrigRight       =   8175
      OrigBottom      =   5535
      Increment       =   100
      Max             =   2000
      Min             =   100
      SyncBuddy       =   -1  'True
      BuddyProperty   =   65537
      Enabled         =   -1  'True
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   5400
      Top             =   4320
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H80000010&
      Caption         =   "Readings"
      Height          =   2895
      Left            =   6840
      TabIndex        =   4
      Top             =   240
      Width           =   3375
      Begin MSComctlLib.ProgressBar ProgressBar3 
         Height          =   375
         Left            =   240
         TabIndex        =   10
         Top             =   2280
         Width           =   2895
         _ExtentX        =   5106
         _ExtentY        =   661
         _Version        =   393216
         Appearance      =   1
         Scrolling       =   1
      End
      Begin MSComctlLib.ProgressBar ProgressBar2 
         Height          =   375
         Left            =   240
         TabIndex        =   9
         Top             =   1440
         Width           =   2895
         _ExtentX        =   5106
         _ExtentY        =   661
         _Version        =   393216
         Appearance      =   1
         Max             =   60
         Scrolling       =   1
      End
      Begin MSComctlLib.ProgressBar ProgressBar1 
         Height          =   375
         Left            =   240
         TabIndex        =   8
         Top             =   600
         Width           =   2895
         _ExtentX        =   5106
         _ExtentY        =   661
         _Version        =   393216
         Appearance      =   1
         Min             =   80000
         Max             =   1,10000e5
         Scrolling       =   1
      End
      Begin VB.Label Label16 
         Alignment       =   2  'Center
         Caption         =   "%"
         Height          =   255
         Left            =   2400
         TabIndex        =   29
         Top             =   2040
         Width           =   735
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         Caption         =   "'C"
         Height          =   255
         Left            =   2400
         TabIndex        =   28
         Top             =   1200
         Width           =   735
      End
      Begin VB.Label Label14 
         Alignment       =   2  'Center
         Caption         =   "hPa"
         Height          =   255
         Left            =   2400
         TabIndex        =   27
         Top             =   360
         Width           =   735
      End
      Begin VB.Label Label9 
         Alignment       =   2  'Center
         Caption         =   "Label9"
         Height          =   255
         Left            =   1440
         TabIndex        =   17
         Top             =   2040
         Width           =   855
      End
      Begin VB.Label Label8 
         Alignment       =   2  'Center
         Caption         =   "Label8"
         Height          =   255
         Left            =   1440
         TabIndex        =   16
         Top             =   1200
         Width           =   855
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         Caption         =   "Label4"
         Height          =   255
         Left            =   1440
         TabIndex        =   11
         Top             =   360
         Width           =   855
      End
      Begin VB.Label Label3 
         Caption         =   "Humidity"
         Height          =   255
         Left            =   240
         TabIndex        =   7
         Top             =   2040
         Width           =   975
      End
      Begin VB.Label Label2 
         Caption         =   "Temperature"
         Height          =   255
         Left            =   240
         TabIndex        =   6
         Top             =   1200
         Width           =   975
      End
      Begin VB.Label Label1 
         Caption         =   "Pressure"
         Height          =   255
         Left            =   240
         TabIndex        =   5
         Top             =   360
         Width           =   975
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H80000010&
      Caption         =   "Settings"
      Height          =   5175
      Left            =   2520
      TabIndex        =   2
      Top             =   120
      Width           =   2655
      Begin MSComctlLib.ListView ListView2 
         Height          =   4815
         Left            =   120
         TabIndex        =   3
         Top             =   240
         Width           =   2415
         _ExtentX        =   4260
         _ExtentY        =   8493
         View            =   3
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483638
         BorderStyle     =   1
         Appearance      =   1
         NumItems        =   2
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Setting"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Value"
            Object.Width           =   2540
         EndProperty
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H80000010&
      Caption         =   "Registos Calibração"
      Height          =   5175
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2295
      Begin MSComctlLib.ListView ListView1 
         Height          =   4815
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   2055
         _ExtentX        =   3625
         _ExtentY        =   8493
         View            =   3
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483638
         BorderStyle     =   1
         Appearance      =   1
         NumItems        =   2
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Registo"
            Object.Width           =   1587
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Valor"
            Object.Width           =   1764
         EndProperty
      End
   End
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      Caption         =   "ms"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5880
      TabIndex        =   15
      Top             =   1440
      Width           =   495
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H8000000A&
      Caption         =   "1000"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   375
      Left            =   5400
      TabIndex        =   14
      Top             =   1080
      Width           =   840
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Update Rate:"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5400
      TabIndex        =   12
      Top             =   840
      Width           =   1575
   End
End
Attribute VB_Name = "BME"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    SendData "<BME_REGS?>", 5
    SendData "<BME_CALIB?>", 5
    SendData "<BME_READING?>", 5

End Sub

Private Sub Command2_Click()
    If Timer1.Enabled = True Then
        Timer1.Enabled = False
    Else
        Timer1.Enabled = True
    End If
    
End Sub

Private Sub Form_Load()
    ListView1.ListItems.Clear
    ListView1.ListItems.Add.Text = "TEMP1"
    ListView1.ListItems.Add.Text = "TEMP2"
    ListView1.ListItems.Add.Text = "TEMP3"
    
    ListView1.ListItems.Add.Text = "PRESS1"
    ListView1.ListItems.Add.Text = "PRESS2"
    ListView1.ListItems.Add.Text = "PRESS3"
    ListView1.ListItems.Add.Text = "PRESS4"
    ListView1.ListItems.Add.Text = "PRESS5"
    ListView1.ListItems.Add.Text = "PRESS6"
    ListView1.ListItems.Add.Text = "PRESS7"
    ListView1.ListItems.Add.Text = "PRESS8"
    ListView1.ListItems.Add.Text = "PRESS9"
    
    ListView1.ListItems.Add.Text = "HUM1"
    ListView1.ListItems.Add.Text = "HUM2"
    ListView1.ListItems.Add.Text = "HUM3"
    ListView1.ListItems.Add.Text = "HUM4"
    ListView1.ListItems.Add.Text = "HUM5"
    ListView1.ListItems.Add.Text = "HUM6"
    
    ListView2.ListItems.Add.Text = "ID"
    ListView2.ListItems.Add.Text = "I2C Addr"
    ListView2.ListItems.Add.Text = "tStandby"
    ListView2.ListItems.Add.Text = "Filter"
    ListView2.ListItems.Add.Text = "tempOverSample"
    ListView2.ListItems.Add.Text = "pressOverSample"
    ListView2.ListItems.Add.Text = "humidOverSample"
    SendData "<BME_SETUP?>", TCA_BME
    SendData "<BME_START?>", TCA_BME

End Sub


Function BME_Fill_Lists()
    '---------------------------------------------------
    
    'usar case
    If id_string = "BME_TEMP" Then
        Label8.Caption = Val(value_string)
        ProgressBar2.Value = Val(value_string)
    End If
    If id_string = "BME_PRESS" Then
        Label4.Caption = Val(value_string) / 100
        ProgressBar1.Value = Val(value_string)
    End If
    If id_string = "BME_HUM" Then
        Label9.Caption = Val(value_string)
        ProgressBar3.Value = Val(value_string)
    End If
    If id_string = "BME_ALT" Then
        Label11.Caption = Val(value_string)
        'ProgressBar4.Value = Val(value_string)
    End If
    '---------------------------------------------------
    
    If id_string = "BME_CAL_T1" Then ListView1.ListItems.Item(1).ListSubItems.Add.Text = Val(value_string)
    If id_string = "BME_CAL_T2" Then ListView1.ListItems.Item(2).ListSubItems.Add.Text = Val(value_string)
    If id_string = "BME_CAL_T3" Then ListView1.ListItems.Item(3).ListSubItems.Add.Text = Val(value_string)
    
    If id_string = "BME_CAL_P1" Then ListView1.ListItems.Item(4).ListSubItems.Add.Text = Val(value_string)
    If id_string = "BME_CAL_P2" Then ListView1.ListItems.Item(5).ListSubItems.Add.Text = Val(value_string)
    If id_string = "BME_CAL_P3" Then ListView1.ListItems.Item(6).ListSubItems.Add.Text = Val(value_string)
    If id_string = "BME_CAL_P4" Then ListView1.ListItems.Item(7).ListSubItems.Add.Text = Val(value_string)
    If id_string = "BME_CAL_P5" Then ListView1.ListItems.Item(8).ListSubItems.Add.Text = Val(value_string)
    If id_string = "BME_CAL_P6" Then ListView1.ListItems.Item(9).ListSubItems.Add.Text = Val(value_string)
    If id_string = "BME_CAL_P7" Then ListView1.ListItems.Item(10).ListSubItems.Add.Text = Val(value_string)
    If id_string = "BME_CAL_P8" Then ListView1.ListItems.Item(11).ListSubItems.Add.Text = Val(value_string)
    If id_string = "BME_CAL_P9" Then ListView1.ListItems.Item(12).ListSubItems.Add.Text = Val(value_string)
    
    If id_string = "BME_CAL_H1" Then ListView1.ListItems.Item(13).ListSubItems.Add.Text = Val(value_string)
    If id_string = "BME_CAL_H2" Then ListView1.ListItems.Item(14).ListSubItems.Add.Text = Val(value_string)
    If id_string = "BME_CAL_H3" Then ListView1.ListItems.Item(15).ListSubItems.Add.Text = Val(value_string)
    If id_string = "BME_CAL_H4" Then ListView1.ListItems.Item(16).ListSubItems.Add.Text = Val(value_string)
    If id_string = "BME_CAL_H5" Then ListView1.ListItems.Item(17).ListSubItems.Add.Text = Val(value_string)
    If id_string = "BME_CAL_H6" Then ListView1.ListItems.Item(18).ListSubItems.Add.Text = Val(value_string)
    
    '---------------------------------------------------
    'uint8_t runMode;
    'uint8_t tStandby;
    'uint8_t filter;
    'uint8_t tempOverSample;
    'uint8_t pressOverSample;
    'uint8_t humidOverSample;
    
    '---------------------------------------------------

End Function

Private Sub Form_Unload(Cancel As Integer)
    Timer1.Enabled = False
End Sub

Private Sub Timer1_Timer()
    SendData "<BME_READING?>", TCA_BME
End Sub

Private Sub UpDown1_Change()
    Timer1.Interval = Val(Label6.Caption)
End Sub


