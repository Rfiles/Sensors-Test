VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form PCA 
   BackColor       =   &H80000010&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "PCA9685"
   ClientHeight    =   6825
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   10830
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
   ScaleHeight     =   6825
   ScaleWidth      =   10830
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   Begin VB.Frame Frame3 
      Caption         =   "Sw Driver Mode"
      Height          =   1095
      Left            =   8520
      TabIndex        =   71
      Top             =   4680
      Width           =   1935
      Begin VB.OptionButton Option7 
         Caption         =   "ORIGINAL"
         Height          =   255
         Left            =   240
         TabIndex        =   73
         Top             =   600
         Width           =   1575
      End
      Begin VB.OptionButton Option6 
         Caption         =   "SERVO"
         Height          =   255
         Left            =   240
         TabIndex        =   72
         Top             =   360
         Value           =   -1  'True
         Width           =   1575
      End
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   0
      Top             =   0
   End
   Begin MSComctlLib.Slider Slider32 
      Height          =   495
      Left            =   8160
      TabIndex        =   51
      Top             =   4080
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider31 
      Height          =   495
      Left            =   5880
      TabIndex        =   50
      Top             =   4080
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider30 
      Height          =   495
      Left            =   8160
      TabIndex        =   49
      Top             =   3600
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider29 
      Height          =   495
      Left            =   5880
      TabIndex        =   48
      Top             =   3600
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider28 
      Height          =   495
      Left            =   8160
      TabIndex        =   47
      Top             =   3120
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider27 
      Height          =   495
      Left            =   5880
      TabIndex        =   46
      Top             =   3120
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider26 
      Height          =   495
      Left            =   8160
      TabIndex        =   45
      Top             =   2640
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider25 
      Height          =   495
      Left            =   5880
      TabIndex        =   44
      Top             =   2640
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider24 
      Height          =   495
      Left            =   8160
      TabIndex        =   43
      Top             =   2160
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider23 
      Height          =   495
      Left            =   5880
      TabIndex        =   42
      Top             =   2160
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider22 
      Height          =   495
      Left            =   8160
      TabIndex        =   41
      Top             =   1680
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider21 
      Height          =   495
      Left            =   5880
      TabIndex        =   40
      Top             =   1680
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider20 
      Height          =   495
      Left            =   8160
      TabIndex        =   39
      Top             =   1200
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider19 
      Height          =   495
      Left            =   5880
      TabIndex        =   38
      Top             =   1200
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider18 
      Height          =   495
      Left            =   8160
      TabIndex        =   37
      Top             =   720
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider17 
      Height          =   495
      Left            =   5880
      TabIndex        =   36
      Top             =   720
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider16 
      Height          =   495
      Left            =   3000
      TabIndex        =   35
      Top             =   4080
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider15 
      Height          =   495
      Left            =   720
      TabIndex        =   34
      Top             =   4080
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider14 
      Height          =   495
      Left            =   3000
      TabIndex        =   33
      Top             =   3600
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider13 
      Height          =   495
      Left            =   720
      TabIndex        =   32
      Top             =   3600
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider12 
      Height          =   495
      Left            =   3000
      TabIndex        =   31
      Top             =   3120
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider11 
      Height          =   495
      Left            =   720
      TabIndex        =   30
      Top             =   3120
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider10 
      Height          =   495
      Left            =   3000
      TabIndex        =   29
      Top             =   2640
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider9 
      Height          =   495
      Left            =   720
      TabIndex        =   28
      Top             =   2640
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider8 
      Height          =   495
      Left            =   3000
      TabIndex        =   27
      Top             =   2160
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider7 
      Height          =   495
      Left            =   720
      TabIndex        =   26
      Top             =   2160
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider6 
      Height          =   495
      Left            =   3000
      TabIndex        =   25
      Top             =   1680
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider5 
      Height          =   495
      Left            =   720
      TabIndex        =   24
      Top             =   1680
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider4 
      Height          =   495
      Left            =   3000
      TabIndex        =   23
      Top             =   1200
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider3 
      Height          =   495
      Left            =   720
      TabIndex        =   22
      Top             =   1200
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider2 
      Height          =   495
      Left            =   3000
      TabIndex        =   21
      Top             =   720
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin MSComctlLib.Slider Slider1 
      Height          =   495
      Left            =   720
      TabIndex        =   20
      Top             =   720
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      _Version        =   393216
      Max             =   4095
      TickFrequency   =   100
   End
   Begin VB.TextBox Text2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
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
      Left            =   7320
      MaxLength       =   3
      TabIndex        =   17
      Text            =   "50"
      Top             =   5040
      Width           =   975
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
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
      Left            =   7320
      MaxLength       =   4
      TabIndex        =   16
      Text            =   "24"
      Top             =   4680
      Width           =   975
   End
   Begin VB.Frame Frame2 
      Caption         =   "Output when not Enable"
      Height          =   1095
      Left            =   360
      TabIndex        =   10
      Top             =   4680
      Width           =   2415
      Begin VB.OptionButton Option5 
         Caption         =   "HIGH IMPEDANCE"
         Height          =   255
         Left            =   240
         TabIndex        =   13
         Top             =   720
         Width           =   1935
      End
      Begin VB.OptionButton Option4 
         Caption         =   "LOW"
         Height          =   255
         Left            =   240
         TabIndex        =   12
         Top             =   240
         Value           =   -1  'True
         Width           =   1575
      End
      Begin VB.OptionButton Option3 
         Caption         =   "HIGH"
         Height          =   255
         Left            =   240
         TabIndex        =   11
         Top             =   480
         Width           =   1695
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Output Drivers"
      Height          =   975
      Left            =   3000
      TabIndex        =   7
      Top             =   4680
      Width           =   2295
      Begin VB.OptionButton Option2 
         Caption         =   "OPEN DRAIN"
         Height          =   255
         Left            =   240
         TabIndex        =   9
         Top             =   480
         Width           =   1455
      End
      Begin VB.OptionButton Option1 
         Caption         =   "TOTEM POLE"
         Height          =   255
         Left            =   240
         TabIndex        =   8
         Top             =   240
         Value           =   -1  'True
         Width           =   1455
      End
   End
   Begin VB.CheckBox Check3 
      Caption         =   "Sleep Mode"
      Height          =   255
      Left            =   5880
      TabIndex        =   6
      Top             =   5400
      Value           =   1  'Checked
      Width           =   2415
   End
   Begin MSComCtl2.UpDown UpDown1 
      Height          =   255
      Left            =   3480
      TabIndex        =   3
      Top             =   6360
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   450
      _Version        =   393216
      Value           =   1000
      Increment       =   250
      Max             =   2000
      Min             =   250
      Enabled         =   -1  'True
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Auto Send"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2400
      TabIndex        =   2
      Top             =   6120
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Send All"
      Height          =   495
      Left            =   360
      TabIndex        =   0
      Top             =   6120
      Width           =   1695
   End
   Begin VB.Label Label26 
      Alignment       =   2  'Center
      Caption         =   "15"
      Height          =   255
      Left            =   5520
      TabIndex        =   70
      Top             =   4200
      Width           =   255
   End
   Begin VB.Label Label25 
      Alignment       =   2  'Center
      Caption         =   "14"
      Height          =   255
      Left            =   5520
      TabIndex        =   69
      Top             =   3720
      Width           =   255
   End
   Begin VB.Label Label24 
      Alignment       =   2  'Center
      Caption         =   "13"
      Height          =   255
      Left            =   5520
      TabIndex        =   68
      Top             =   3240
      Width           =   255
   End
   Begin VB.Label Label23 
      Alignment       =   2  'Center
      Caption         =   "12"
      Height          =   255
      Left            =   5520
      TabIndex        =   67
      Top             =   2760
      Width           =   255
   End
   Begin VB.Label Label22 
      Alignment       =   2  'Center
      Caption         =   "11"
      Height          =   255
      Left            =   5520
      TabIndex        =   66
      Top             =   2280
      Width           =   255
   End
   Begin VB.Label Label21 
      Alignment       =   2  'Center
      Caption         =   "10"
      Height          =   255
      Left            =   5520
      TabIndex        =   65
      Top             =   1800
      Width           =   255
   End
   Begin VB.Label Label20 
      Alignment       =   2  'Center
      Caption         =   "9"
      Height          =   255
      Left            =   5520
      TabIndex        =   64
      Top             =   1320
      Width           =   255
   End
   Begin VB.Label Label19 
      Alignment       =   2  'Center
      Caption         =   "8"
      Height          =   255
      Left            =   5520
      TabIndex        =   63
      Top             =   840
      Width           =   255
   End
   Begin VB.Label Label18 
      Alignment       =   2  'Center
      Caption         =   "7"
      Height          =   255
      Left            =   360
      TabIndex        =   62
      Top             =   4200
      Width           =   255
   End
   Begin VB.Label Label17 
      Alignment       =   2  'Center
      Caption         =   "6"
      Height          =   255
      Left            =   360
      TabIndex        =   61
      Top             =   3720
      Width           =   255
   End
   Begin VB.Label Label16 
      Alignment       =   2  'Center
      Caption         =   "5"
      Height          =   255
      Left            =   360
      TabIndex        =   60
      Top             =   3240
      Width           =   255
   End
   Begin VB.Label Label15 
      Alignment       =   2  'Center
      Caption         =   "4"
      Height          =   255
      Left            =   360
      TabIndex        =   59
      Top             =   2760
      Width           =   255
   End
   Begin VB.Label Label14 
      Alignment       =   2  'Center
      Caption         =   "3"
      Height          =   255
      Left            =   360
      TabIndex        =   58
      Top             =   2280
      Width           =   255
   End
   Begin VB.Label Label13 
      Alignment       =   2  'Center
      Caption         =   "2"
      Height          =   255
      Left            =   360
      TabIndex        =   57
      Top             =   1800
      Width           =   255
   End
   Begin VB.Label Label12 
      Alignment       =   2  'Center
      Caption         =   "1"
      Height          =   255
      Left            =   360
      TabIndex        =   56
      Top             =   1320
      Width           =   255
   End
   Begin VB.Label Label11 
      Alignment       =   2  'Center
      Caption         =   "0"
      Height          =   255
      Left            =   360
      TabIndex        =   55
      Top             =   840
      Width           =   255
   End
   Begin VB.Label Label10 
      Alignment       =   2  'Center
      Caption         =   "CH"
      Height          =   255
      Left            =   5520
      TabIndex        =   54
      Top             =   480
      Width           =   375
   End
   Begin VB.Label Label9 
      Alignment       =   2  'Center
      Caption         =   "ON Time"
      Height          =   255
      Left            =   5880
      TabIndex        =   53
      Top             =   480
      Width           =   1695
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "OFF Time"
      Height          =   255
      Left            =   8160
      TabIndex        =   52
      Top             =   480
      Width           =   1695
   End
   Begin VB.Line Line3 
      Index           =   15
      X1              =   5520
      X2              =   10440
      Y1              =   4560
      Y2              =   4560
   End
   Begin VB.Line Line3 
      Index           =   14
      X1              =   5520
      X2              =   10440
      Y1              =   4080
      Y2              =   4080
   End
   Begin VB.Line Line3 
      Index           =   13
      X1              =   5520
      X2              =   10440
      Y1              =   3600
      Y2              =   3600
   End
   Begin VB.Line Line3 
      Index           =   12
      X1              =   5520
      X2              =   10440
      Y1              =   3120
      Y2              =   3120
   End
   Begin VB.Line Line3 
      Index           =   11
      X1              =   5520
      X2              =   10440
      Y1              =   2640
      Y2              =   2640
   End
   Begin VB.Line Line3 
      Index           =   10
      X1              =   5520
      X2              =   10440
      Y1              =   2160
      Y2              =   2160
   End
   Begin VB.Line Line3 
      Index           =   9
      X1              =   5520
      X2              =   10440
      Y1              =   1680
      Y2              =   1680
   End
   Begin VB.Line Line3 
      Index           =   8
      X1              =   5520
      X2              =   10440
      Y1              =   1200
      Y2              =   1200
   End
   Begin VB.Line Line3 
      Index           =   7
      X1              =   360
      X2              =   5280
      Y1              =   4560
      Y2              =   4560
   End
   Begin VB.Line Line3 
      Index           =   6
      X1              =   360
      X2              =   5280
      Y1              =   4080
      Y2              =   4080
   End
   Begin VB.Line Line3 
      Index           =   5
      X1              =   360
      X2              =   5280
      Y1              =   3600
      Y2              =   3600
   End
   Begin VB.Line Line3 
      Index           =   4
      X1              =   360
      X2              =   5280
      Y1              =   3120
      Y2              =   3120
   End
   Begin VB.Line Line3 
      Index           =   3
      X1              =   360
      X2              =   5280
      Y1              =   2640
      Y2              =   2640
   End
   Begin VB.Line Line3 
      Index           =   2
      X1              =   360
      X2              =   5280
      Y1              =   2160
      Y2              =   2160
   End
   Begin VB.Line Line3 
      Index           =   1
      X1              =   360
      X2              =   5280
      Y1              =   1680
      Y2              =   1680
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      Caption         =   "OFF Time"
      Height          =   255
      Left            =   3000
      TabIndex        =   19
      Top             =   480
      Width           =   1695
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Caption         =   "ON Time"
      Height          =   255
      Left            =   720
      TabIndex        =   18
      Top             =   480
      Width           =   1695
   End
   Begin VB.Label Label8 
      Caption         =   "SetPreScaller"
      Height          =   255
      Left            =   5880
      TabIndex        =   15
      Top             =   5040
      Width           =   1335
   End
   Begin VB.Label Label7 
      Caption         =   "SetPeriodFreq"
      Height          =   255
      Left            =   5880
      TabIndex        =   14
      Top             =   4680
      Width           =   1335
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "CH"
      Height          =   255
      Left            =   360
      TabIndex        =   5
      Top             =   480
      Width           =   375
   End
   Begin VB.Shape Shape2 
      FillStyle       =   0  'Solid
      Height          =   495
      Left            =   4200
      Top             =   6120
      Width           =   495
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "ms"
      Height          =   255
      Left            =   3000
      TabIndex        =   4
      Top             =   6360
      Width           =   495
   End
   Begin VB.Shape Shape1 
      Height          =   735
      Left            =   2280
      Top             =   6000
      Width           =   1575
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "1000"
      Height          =   255
      Left            =   2400
      TabIndex        =   1
      Top             =   6360
      Width           =   615
   End
   Begin VB.Line Line5 
      X1              =   0
      X2              =   10920
      Y1              =   5880
      Y2              =   5880
   End
   Begin VB.Line Line3 
      Index           =   0
      X1              =   360
      X2              =   5280
      Y1              =   1200
      Y2              =   1200
   End
   Begin VB.Line Line2 
      Index           =   0
      X1              =   360
      X2              =   5280
      Y1              =   720
      Y2              =   720
   End
End
Attribute VB_Name = "PCA"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Check1_Click()
    Timer1.Enabled = Check1.Value
End Sub

Private Sub Check3_Click()
    If Check3.Value = 1 Then
        SendData "<PCA_SLP=ON>", TCA_PCA
    Else
        SendData "<PCA_SLP=OFF>", TCA_PCA
    End If
End Sub

Private Sub Form_Load()
    SendData "<PCA_START=SERVO>", TCA_PCA
End Sub

Private Sub Option1_Click()
    SendData "<PCA_OD=1>", TCA_PCA
End Sub

Private Sub Option2_Click()
    SendData "<PCA_OD=0>", TCA_PCA
End Sub

Private Sub Option3_Click()
    SendData "<PCA_SLP=1>", TCA_PCA
End Sub

Private Sub Option4_Click()
    SendData "<PCA_SLP=0>", TCA_PCA
End Sub

Private Sub Option5_Click()
    SendData "<PCA_SLP=2>", TCA_PCA
End Sub

Private Sub Option6_Click()
    SendData "<PCA_START=SERVO>", TCA_PCA
    Text2.Text = 50
End Sub

Private Sub Option7_Click()
    SendData "<PCA_START=ORIG>", TCA_PCA
End Sub

Private Sub Slider1_Change()
    SendData "<PCA_ONT=0," & Slider1.Value & ">", TCA_PCA
    Debug.Print Slider1.Value
End Sub

Private Sub Slider2_Change()
    SendData "<PCA_ONT=0," & Slider2.Value & ">", TCA_PCA
End Sub

Private Sub Slider3_Change()
    SendData "<PCA_ONT=1," & Slider3.Value & ">", TCA_PCA
End Sub

Private Sub Slider4_Change()
    SendData "<PCA_ONT=1," & Slider4.Value & ">", TCA_PCA
End Sub

Private Sub Slider5_Change()
    SendData "<PCA_ONT=2," & Slider5.Value & ">", TCA_PCA
End Sub

Private Sub Slider6_Change()
    SendData "<PCA_ONT=2," & Slider6.Value & ">", TCA_PCA
End Sub

Private Sub Slider7_Change()
    SendData "<PCA_ONT=3," & Slider7.Value & ">", TCA_PCA
End Sub

Private Sub Slider8_Change()
    SendData "<PCA_ONT=3," & Slider8.Value & ">", TCA_PCA
End Sub

Private Sub Slider9_Change()
    SendData "<PCA_ONT=4," & Slider9.Value & ">", TCA_PCA
End Sub

Private Sub Slider10_Change()
    SendData "<PCA_ONT=4," & Slider10.Value & ">", TCA_PCA
End Sub

Private Sub Slider11_Change()
    SendData "<PCA_ONT=5," & Slider11.Value & ">", TCA_PCA
End Sub

Private Sub Slider12_Change()
    SendData "<PCA_ONT=5," & Slider12.Value & ">", TCA_PCA
End Sub

Private Sub Slider13_Change()
    SendData "<PCA_ONT=6," & Slider13.Value & ">", TCA_PCA
End Sub

Private Sub Slider14_Change()
    SendData "<PCA_ONT=6," & Slider14.Value & ">", TCA_PCA
End Sub

Private Sub Slider15_Change()
    SendData "<PCA_ONT=7," & Slider15.Value & ">", TCA_PCA
End Sub

Private Sub Slider16_Change()
    SendData "<PCA_ONT=7," & Slider16.Value & ">", TCA_PCA
End Sub

Private Sub Slider17_Change()
    SendData "<PCA_ONT=8," & Slider17.Value & ">", TCA_PCA
End Sub

Private Sub Slider18_Change()
    SendData "<PCA_ONT=8," & Slider18.Value & ">", TCA_PCA
End Sub

Private Sub Slider19_Change()
    SendData "<PCA_ONT=9," & Slider19.Value & ">", TCA_PCA
End Sub

Private Sub Slider20_Change()
    SendData "<PCA_ONT=9," & Slider20.Value & ">", TCA_PCA
End Sub

Private Sub Slider21_Change()
    SendData "<PCA_ONT=10," & Slider21.Value & ">", TCA_PCA
End Sub

Private Sub Slider22_Change()
    SendData "<PCA_ONT=10," & Slider22.Value & ">", TCA_PCA
End Sub

Private Sub Slider23_Change()
    SendData "<PCA_ONT=11," & Slider23.Value & ">", TCA_PCA
End Sub

Private Sub Slider24_Change()
    SendData "<PCA_ONT=11," & Slider24.Value & ">", TCA_PCA
End Sub

Private Sub Slider25_Change()
    SendData "<PCA_ONT=12," & Slider25.Value & ">", TCA_PCA
End Sub

Private Sub Slider26_Change()
    SendData "<PCA_ONT=12," & Slider26.Value & ">", TCA_PCA
End Sub

Private Sub Slider27_Change()
    SendData "<PCA_ONT=13," & Slider27.Value & ">", TCA_PCA
End Sub

Private Sub Slider28_Change()
    SendData "<PCA_ONT=13," & Slider28.Value & ">", TCA_PCA
End Sub

Private Sub Slider29_Change()
    SendData "<PCA_ONT=14," & Slider29.Value & ">", TCA_PCA
End Sub

Private Sub Slider30_Change()
    SendData "<PCA_ONT=14," & Slider30.Value & ">", TCA_PCA
End Sub

Private Sub Slider31_Change()
    SendData "<PCA_ONT=15," & Slider31.Value & ">", TCA_PCA
End Sub

Private Sub Slider32_Change()
    SendData "<PCA_ONT=15," & Slider32.Value & ">", TCA_PCA
End Sub


Private Sub UpDown1_Change()
    Timer1.Interval = UpDown1.Value
    Label2.Caption = UpDown1.Value
End Sub


Function Parse_PCA()
    Select Case id_string
        Case "PCA_START"
            Shape2.FillColor = vbGreen
        Case "PCA_ONT"
    End Select
End Function


