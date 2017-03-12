VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form EEP 
   BackColor       =   &H80000010&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "External EEPROM"
   ClientHeight    =   4380
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   8085
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
   ScaleHeight     =   4380
   ScaleWidth      =   8085
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   Begin MSComctlLib.ListView ListView1 
      Height          =   3015
      Left            =   240
      TabIndex        =   11
      Top             =   960
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   5318
      View            =   3
      Sorted          =   -1  'True
      LabelWrap       =   -1  'True
      HideSelection   =   0   'False
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   2
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Addr"
         Object.Width           =   1235
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Name"
         Object.Width           =   2540
      EndProperty
   End
   Begin VB.TextBox Text4 
      Alignment       =   1  'Right Justify
      Height          =   285
      Left            =   1080
      MaxLength       =   8
      TabIndex        =   9
      Text            =   "Chunk"
      Top             =   240
      Width           =   1455
   End
   Begin VB.TextBox Text3 
      Alignment       =   1  'Right Justify
      BeginProperty DataFormat 
         Type            =   1
         Format          =   "0"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   2070
         SubFormatType   =   1
      EndProperty
      Height          =   285
      Left            =   1680
      MaxLength       =   5
      TabIndex        =   6
      Text            =   "0"
      Top             =   600
      Width           =   855
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   6480
      TabIndex        =   5
      Text            =   "Size"
      Top             =   240
      Width           =   855
   End
   Begin MSComCtl2.UpDown UpDown1 
      Height          =   255
      Left            =   7560
      TabIndex        =   4
      Top             =   240
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   450
      _Version        =   393216
      Value           =   32
      Max             =   65536
      Min             =   1
      Enabled         =   -1  'True
   End
   Begin VB.TextBox Text1 
      Height          =   3285
      Left            =   4560
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   3
      Text            =   "EEPROM.frx":0000
      Top             =   600
      Width           =   3255
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Delete"
      Height          =   495
      Left            =   2880
      TabIndex        =   2
      Top             =   3480
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Read"
      Height          =   495
      Left            =   2880
      TabIndex        =   1
      Top             =   1560
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Write"
      Height          =   495
      Left            =   2880
      TabIndex        =   0
      Top             =   960
      Width           =   1335
   End
   Begin VB.Label Label4 
      Caption         =   "DATA:"
      Height          =   255
      Left            =   4560
      TabIndex        =   10
      Top             =   240
      Width           =   1335
   End
   Begin VB.Label Label3 
      Caption         =   "Name"
      Height          =   255
      Left            =   240
      TabIndex        =   8
      Top             =   240
      Width           =   735
   End
   Begin VB.Label Label2 
      Caption         =   "Address"
      Height          =   255
      Left            =   240
      TabIndex        =   7
      Top             =   600
      Width           =   1335
   End
End
Attribute VB_Name = "EEP"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Function Parse_EEP()
'
End Function

Private Sub Command1_Click()
    main.Text1.Text = "<EEP_WR=0,7,RFILES>"
End Sub

Private Sub Command2_Click()
    main.Text1.Text = "<EEP_RD?0,7>"
End Sub

Private Sub Form_Load()
    SendData "<EEP_START=>", TCA_EEP
    main.Text1.Text = "<EEP_START=>"
    
    ListView1.ListItems.Add.Text = "abc"
    'List1.AddItem "OLA"
End Sub
