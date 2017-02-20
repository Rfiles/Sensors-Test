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
   Begin VB.Frame Frame2 
      Caption         =   "Resolution"
      Height          =   2055
      Left            =   2880
      TabIndex        =   10
      Top             =   480
      Width           =   1815
      Begin VB.OptionButton Option3 
         Caption         =   "Option3"
         Height          =   375
         Left            =   120
         TabIndex        =   13
         Top             =   960
         Width           =   1335
      End
      Begin VB.OptionButton Option2 
         Caption         =   "Option2"
         Height          =   195
         Left            =   120
         TabIndex        =   12
         Top             =   720
         Width           =   1335
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Option1"
         Height          =   255
         Left            =   120
         TabIndex        =   11
         Top             =   360
         Width           =   1215
      End
   End
   Begin MSComctlLib.Slider Slider1 
      Height          =   495
      Left            =   360
      TabIndex        =   6
      Top             =   3000
      Width           =   4575
      _ExtentX        =   8070
      _ExtentY        =   873
      _Version        =   393216
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   360
      TabIndex        =   5
      Text            =   "Resolution"
      Top             =   1920
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Caption         =   "Reading"
      Height          =   2775
      Left            =   5160
      TabIndex        =   3
      Top             =   600
      Width           =   2535
      Begin VB.Label Label5 
         Caption         =   "Lux"
         Height          =   255
         Left            =   240
         TabIndex        =   9
         Top             =   360
         Width           =   735
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BackColor       =   &H8000000A&
         Caption         =   "1234"
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
      Caption         =   "Update Rate"
      Height          =   255
      Left            =   840
      TabIndex        =   2
      Top             =   840
      Width           =   1335
   End
   Begin MSComCtl2.UpDown UpDown1 
      Height          =   375
      Left            =   1920
      TabIndex        =   1
      Top             =   1200
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   661
      _Version        =   393216
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "2,54"
      Height          =   255
      Left            =   3720
      TabIndex        =   8
      Top             =   2760
      Width           =   1215
   End
   Begin VB.Label Label3 
      Caption         =   "Sensitivity"
      Height          =   255
      Left            =   360
      TabIndex        =   7
      Top             =   2760
      Width           =   3255
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   375
      Left            =   840
      TabIndex        =   0
      Top             =   1200
      Width           =   855
   End
End
Attribute VB_Name = "BH1750"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Function light_parse()

'e
End Function
