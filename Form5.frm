VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form Form5 
   BackColor       =   &H80000010&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "BME280"
   ClientHeight    =   6660
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   10425
   LinkTopic       =   "Form5"
   MaxButton       =   0   'False
   ScaleHeight     =   6660
   ScaleWidth      =   10425
   StartUpPosition =   2  'CenterScreen
   Begin MSComCtl2.UpDown UpDown1 
      Height          =   375
      Left            =   8880
      TabIndex        =   13
      Top             =   5280
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   661
      _Version        =   393216
      Value           =   1000
      BuddyControl    =   "Label6"
      BuddyDispid     =   196618
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
      Left            =   9840
      Top             =   5040
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H80000010&
      Caption         =   "Readings"
      Height          =   4575
      Left            =   6840
      TabIndex        =   4
      Top             =   360
      Width           =   3375
      Begin MSComctlLib.ProgressBar ProgressBar3 
         Height          =   375
         Left            =   240
         TabIndex        =   10
         Top             =   3840
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
         Top             =   3000
         Width           =   2895
         _ExtentX        =   5106
         _ExtentY        =   661
         _Version        =   393216
         Appearance      =   1
         Min             =   1e-4
         Scrolling       =   1
      End
      Begin MSComctlLib.ProgressBar ProgressBar1 
         Height          =   375
         Left            =   240
         TabIndex        =   8
         Top             =   2160
         Width           =   2895
         _ExtentX        =   5106
         _ExtentY        =   661
         _Version        =   393216
         Appearance      =   1
         Min             =   1e-4
         Scrolling       =   1
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Label4"
         Height          =   255
         Left            =   1440
         TabIndex        =   11
         Top             =   1920
         Width           =   1695
      End
      Begin VB.Label Label3 
         Caption         =   "Humidity"
         Height          =   255
         Left            =   240
         TabIndex        =   7
         Top             =   3600
         Width           =   1215
      End
      Begin VB.Label Label2 
         Caption         =   "Temperature"
         Height          =   255
         Left            =   240
         TabIndex        =   6
         Top             =   2760
         Width           =   975
      End
      Begin VB.Label Label1 
         Caption         =   "Pressure"
         Height          =   255
         Left            =   240
         TabIndex        =   5
         Top             =   1920
         Width           =   735
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H80000010&
      Caption         =   "Settings"
      Height          =   5175
      Left            =   2760
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
      Width           =   2535
      Begin MSComctlLib.ListView ListView1 
         Height          =   4815
         Left            =   240
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
      Left            =   9240
      TabIndex        =   15
      Top             =   5280
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
      Left            =   8040
      TabIndex        =   14
      Top             =   5280
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
      Left            =   6720
      TabIndex        =   12
      Top             =   5280
      Width           =   1815
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
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
    
    ListView1.ListItems.Item(1).ListSubItems.Add.Text = 123
    ListView1.ListItems.Item(2).ListSubItems.Add.Text = 456
    
    ListView2.ListItems.Add.Text = "ID"
    ListView2.ListItems.Add.Text = "I2C Addr"
    ListView2.ListItems.Add.Text = "tStandby"
    ListView2.ListItems.Add.Text = "Filter"
    ListView2.ListItems.Add.Text = "tempOverSample"
    ListView2.ListItems.Add.Text = "pressOverSample"
    ListView2.ListItems.Add.Text = "humidOverSample"
    


End Sub
