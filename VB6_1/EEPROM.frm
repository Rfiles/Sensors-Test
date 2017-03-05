VERSION 5.00
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
   Begin VB.TextBox Text4 
      Alignment       =   1  'Right Justify
      Height          =   285
      Left            =   1080
      TabIndex        =   10
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
      TabIndex        =   7
      Text            =   "0"
      Top             =   600
      Width           =   855
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   6480
      TabIndex        =   6
      Text            =   "Size"
      Top             =   240
      Width           =   855
   End
   Begin MSComCtl2.UpDown UpDown1 
      Height          =   255
      Left            =   7560
      TabIndex        =   5
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
      TabIndex        =   4
      Text            =   "EEPROM.frx":0000
      Top             =   600
      Width           =   3255
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Delete"
      Height          =   495
      Left            =   2880
      TabIndex        =   3
      Top             =   3480
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Read"
      Height          =   495
      Left            =   2880
      TabIndex        =   2
      Top             =   1560
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Write"
      Height          =   495
      Left            =   2880
      TabIndex        =   1
      Top             =   960
      Width           =   1335
   End
   Begin VB.ListBox List1 
      Height          =   2985
      Left            =   240
      TabIndex        =   0
      Top             =   960
      Width           =   2295
   End
   Begin VB.Label Label4 
      Caption         =   "DATA:"
      Height          =   255
      Left            =   4560
      TabIndex        =   11
      Top             =   240
      Width           =   1335
   End
   Begin VB.Label Label3 
      Caption         =   "Name"
      Height          =   255
      Left            =   240
      TabIndex        =   9
      Top             =   240
      Width           =   735
   End
   Begin VB.Label Label2 
      Caption         =   "Address"
      Height          =   255
      Left            =   240
      TabIndex        =   8
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

