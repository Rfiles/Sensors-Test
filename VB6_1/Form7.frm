VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form Form7 
   BackColor       =   &H80000010&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "RTC DS3231"
   ClientHeight    =   5445
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   9180
   LinkTopic       =   "Form7"
   MaxButton       =   0   'False
   ScaleHeight     =   5445
   ScaleWidth      =   9180
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command4 
      Caption         =   "Set Now"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   480
      TabIndex        =   37
      Top             =   1920
      Width           =   1935
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   0
      Top             =   0
   End
   Begin VB.CheckBox Check4 
      Caption         =   "Update Rate"
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
      Left            =   3120
      TabIndex        =   35
      Top             =   2040
      Width           =   1695
   End
   Begin MSComCtl2.UpDown UpDown7 
      Height          =   255
      Left            =   4560
      TabIndex        =   34
      Top             =   2400
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   450
      _Version        =   393216
      Value           =   1
      Max             =   5
      Min             =   1
      Enabled         =   -1  'True
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Update All"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   480
      TabIndex        =   24
      Top             =   2520
      Width           =   1935
   End
   Begin VB.Frame Frame4 
      BackColor       =   &H8000000C&
      Caption         =   "Misc"
      Height          =   1815
      Left            =   6480
      TabIndex        =   11
      Top             =   3360
      Width           =   2415
      Begin VB.CheckBox Check1 
         Caption         =   "Enable 32kHz pin"
         Height          =   255
         Left            =   240
         TabIndex        =   25
         Top             =   240
         Width           =   1575
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         Left            =   240
         TabIndex        =   20
         Text            =   "Frequency"
         Top             =   1440
         Width           =   1695
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   240
         TabIndex        =   19
         Text            =   "Pin Mode"
         Top             =   840
         Width           =   1695
      End
      Begin VB.Label Label29 
         BackStyle       =   0  'Transparent
         Caption         =   "Clock Output Frequency"
         Height          =   255
         Left            =   240
         TabIndex        =   49
         Top             =   1200
         Width           =   1935
      End
      Begin VB.Label Label28 
         BackStyle       =   0  'Transparent
         Caption         =   "SQW pin / Alarms"
         Height          =   255
         Left            =   240
         TabIndex        =   48
         Top             =   600
         Width           =   1695
      End
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H8000000C&
      Caption         =   "Alarm 2"
      Height          =   1815
      Left            =   3360
      TabIndex        =   10
      Top             =   3360
      Width           =   2535
      Begin MSComCtl2.UpDown UpDown11 
         Height          =   255
         Left            =   2160
         TabIndex        =   47
         Top             =   960
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   450
         _Version        =   393216
         Enabled         =   -1  'True
      End
      Begin MSComCtl2.UpDown UpDown10 
         Height          =   255
         Left            =   2160
         TabIndex        =   46
         Top             =   600
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   450
         _Version        =   393216
         Enabled         =   -1  'True
      End
      Begin VB.ComboBox Combo4 
         Height          =   315
         Left            =   120
         TabIndex        =   39
         Text            =   "Repeat Mode"
         Top             =   1320
         Width           =   2295
      End
      Begin MSComCtl2.UpDown UpDown2 
         Height          =   255
         Left            =   840
         TabIndex        =   31
         Top             =   600
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   450
         _Version        =   393216
         Enabled         =   -1  'True
      End
      Begin MSComCtl2.UpDown UpDown1 
         Height          =   255
         Left            =   840
         TabIndex        =   30
         Top             =   240
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   450
         _Version        =   393216
         Enabled         =   -1  'True
      End
      Begin VB.Label Label38 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "M"
         Height          =   255
         Left            =   120
         TabIndex        =   65
         Top             =   600
         Width           =   255
      End
      Begin VB.Label Label37 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "H"
         Height          =   255
         Left            =   120
         TabIndex        =   64
         Top             =   240
         Width           =   255
      End
      Begin VB.Shape Shape12 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   2160
         Top             =   240
         Width           =   255
      End
      Begin VB.Label Label34 
         Alignment       =   2  'Center
         Caption         =   "Enabled:"
         Height          =   255
         Left            =   1200
         TabIndex        =   60
         Top             =   240
         Width           =   855
      End
      Begin VB.Label Label27 
         Alignment       =   2  'Center
         Caption         =   "Day"
         Height          =   255
         Left            =   1200
         TabIndex        =   45
         Top             =   960
         Width           =   975
      End
      Begin VB.Label Label26 
         Alignment       =   2  'Center
         Caption         =   "Mon"
         Height          =   255
         Left            =   1200
         TabIndex        =   44
         Top             =   600
         Width           =   975
      End
      Begin VB.Label Label19 
         Alignment       =   2  'Center
         Caption         =   "0"
         Height          =   255
         Left            =   360
         TabIndex        =   29
         Top             =   600
         Width           =   495
      End
      Begin VB.Label Label18 
         Alignment       =   2  'Center
         Caption         =   "0"
         Height          =   255
         Left            =   360
         TabIndex        =   28
         Top             =   240
         Width           =   495
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H8000000C&
      Caption         =   "Alarm 1"
      Height          =   1815
      Left            =   240
      TabIndex        =   9
      Top             =   3360
      Width           =   2535
      Begin MSComCtl2.UpDown UpDown9 
         Height          =   255
         Left            =   2160
         TabIndex        =   43
         Top             =   960
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   450
         _Version        =   393216
         OrigLeft        =   1920
         OrigTop         =   1080
         OrigRight       =   2175
         OrigBottom      =   1335
         Enabled         =   -1  'True
      End
      Begin MSComCtl2.UpDown UpDown8 
         Height          =   255
         Left            =   2160
         TabIndex        =   42
         Top             =   600
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   450
         _Version        =   393216
         OrigLeft        =   1920
         OrigTop         =   720
         OrigRight       =   2175
         OrigBottom      =   975
         Enabled         =   -1  'True
      End
      Begin VB.ComboBox Combo3 
         Height          =   315
         ItemData        =   "Form7.frx":0000
         Left            =   120
         List            =   "Form7.frx":0002
         TabIndex        =   38
         Text            =   "Repeat Mode"
         Top             =   1320
         Width           =   2295
      End
      Begin MSComCtl2.UpDown UpDown4 
         Height          =   255
         Left            =   840
         TabIndex        =   16
         Top             =   240
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   450
         _Version        =   393216
         Enabled         =   -1  'True
      End
      Begin MSComCtl2.UpDown UpDown5 
         Height          =   255
         Left            =   840
         TabIndex        =   17
         Top             =   600
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   450
         _Version        =   393216
         Enabled         =   -1  'True
      End
      Begin MSComCtl2.UpDown UpDown6 
         Height          =   255
         Left            =   840
         TabIndex        =   18
         Top             =   960
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   450
         _Version        =   393216
         Enabled         =   -1  'True
      End
      Begin VB.Label Label36 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "S"
         Height          =   255
         Left            =   120
         TabIndex        =   63
         Top             =   960
         Width           =   255
      End
      Begin VB.Label Label35 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "M"
         Height          =   255
         Left            =   120
         TabIndex        =   62
         Top             =   600
         Width           =   255
      End
      Begin VB.Label Label20 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "H"
         Height          =   255
         Left            =   120
         TabIndex        =   61
         Top             =   240
         Width           =   255
      End
      Begin VB.Shape Shape11 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   2160
         Top             =   240
         Width           =   255
      End
      Begin VB.Label Label33 
         Alignment       =   2  'Center
         Caption         =   "Enabled:"
         Height          =   255
         Left            =   1200
         TabIndex        =   59
         Top             =   240
         Width           =   855
      End
      Begin VB.Label Label25 
         Alignment       =   2  'Center
         Caption         =   "Day"
         Height          =   255
         Left            =   1200
         TabIndex        =   41
         Top             =   960
         Width           =   975
      End
      Begin VB.Label Label24 
         Alignment       =   2  'Center
         Caption         =   "Mon"
         Height          =   255
         Left            =   1200
         TabIndex        =   40
         Top             =   600
         Width           =   975
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         Caption         =   "0"
         Height          =   255
         Left            =   360
         TabIndex        =   15
         Top             =   960
         Width           =   495
      End
      Begin VB.Label Label14 
         Alignment       =   2  'Center
         Caption         =   "0"
         Height          =   255
         Left            =   360
         TabIndex        =   14
         Top             =   600
         Width           =   495
      End
      Begin VB.Label Label13 
         Alignment       =   2  'Center
         Caption         =   "0"
         Height          =   255
         Left            =   360
         TabIndex        =   13
         Top             =   240
         Width           =   495
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H8000000A&
      Caption         =   "Frame1"
      Height          =   1695
      Left            =   240
      TabIndex        =   0
      Top             =   0
      Width           =   8655
      Begin MSComCtl2.UpDown UpDown17 
         Height          =   495
         Left            =   5520
         TabIndex        =   55
         Top             =   1080
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   873
         _Version        =   393216
         Max             =   100
         Enabled         =   -1  'True
      End
      Begin MSComCtl2.UpDown UpDown16 
         Height          =   495
         Left            =   5160
         TabIndex        =   54
         Top             =   1080
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   873
         _Version        =   393216
         Max             =   12
         Enabled         =   -1  'True
      End
      Begin MSComCtl2.UpDown UpDown15 
         Height          =   495
         Left            =   4800
         TabIndex        =   53
         Top             =   1080
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   873
         _Version        =   393216
         Max             =   31
         Enabled         =   -1  'True
      End
      Begin MSComCtl2.UpDown UpDown14 
         Height          =   495
         Left            =   4440
         TabIndex        =   52
         Top             =   1080
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   873
         _Version        =   393216
         Max             =   60
         Enabled         =   -1  'True
      End
      Begin MSComCtl2.UpDown UpDown13 
         Height          =   495
         Left            =   4080
         TabIndex        =   51
         Top             =   1080
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   873
         _Version        =   393216
         Max             =   60
         Enabled         =   -1  'True
      End
      Begin MSComCtl2.UpDown UpDown12 
         Height          =   495
         Left            =   3720
         TabIndex        =   50
         Top             =   1080
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   873
         _Version        =   393216
         Max             =   23
         Enabled         =   -1  'True
      End
      Begin VB.Label Label30 
         BackStyle       =   0  'Transparent
         Caption         =   " H      M     S     D      M     Y"
         Height          =   255
         Left            =   3720
         TabIndex        =   56
         Top             =   840
         Width           =   2175
      End
      Begin VB.Shape Shape8 
         FillStyle       =   0  'Solid
         Height          =   135
         Left            =   2040
         Shape           =   3  'Circle
         Top             =   840
         Width           =   255
      End
      Begin VB.Shape Shape7 
         FillStyle       =   0  'Solid
         Height          =   135
         Left            =   2040
         Shape           =   3  'Circle
         Top             =   480
         Width           =   255
      End
      Begin VB.Shape Shape6 
         FillStyle       =   0  'Solid
         Height          =   135
         Left            =   960
         Shape           =   3  'Circle
         Top             =   840
         Width           =   255
      End
      Begin VB.Shape Shape5 
         FillStyle       =   0  'Solid
         Height          =   135
         Left            =   960
         Shape           =   3  'Circle
         Top             =   480
         Width           =   255
      End
      Begin VB.Label Label21 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "-"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   6000
         TabIndex        =   32
         Top             =   1200
         Width           =   2535
      End
      Begin VB.Label Label8 
         Alignment       =   2  'Center
         Caption         =   "Alarm 2"
         Height          =   255
         Left            =   7200
         TabIndex        =   8
         Top             =   600
         Width           =   735
      End
      Begin VB.Label Label7 
         Alignment       =   2  'Center
         Caption         =   "Alarm 1"
         Height          =   255
         Left            =   7200
         TabIndex        =   7
         Top             =   240
         Width           =   735
      End
      Begin VB.Shape Shape2 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   8040
         Top             =   600
         Width           =   375
      End
      Begin VB.Shape Shape1 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   8040
         Top             =   240
         Width           =   375
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   5640
         TabIndex        =   6
         Top             =   240
         Width           =   1335
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   4680
         TabIndex        =   5
         Top             =   240
         Width           =   855
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   3720
         TabIndex        =   4
         Top             =   240
         Width           =   855
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   27.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   2280
         TabIndex        =   3
         Top             =   360
         Width           =   855
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   27.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   1200
         TabIndex        =   2
         Top             =   360
         Width           =   855
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   27.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   120
         TabIndex        =   1
         Top             =   360
         Width           =   855
      End
   End
   Begin VB.Label Label32 
      Alignment       =   2  'Center
      Caption         =   "-"
      Height          =   255
      Left            =   4320
      TabIndex        =   58
      Top             =   2880
      Width           =   495
   End
   Begin VB.Label Label31 
      BackStyle       =   0  'Transparent
      Caption         =   "PC TIME OFF:"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3120
      TabIndex        =   57
      Top             =   2880
      Width           =   1215
   End
   Begin VB.Shape Shape10 
      Height          =   495
      Left            =   3000
      Top             =   2760
      Width           =   1935
   End
   Begin VB.Shape Shape9 
      Height          =   855
      Left            =   3000
      Top             =   1920
      Width           =   1935
   End
   Begin VB.Label Label23 
      BackStyle       =   0  'Transparent
      Caption         =   "Sec"
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
      Left            =   3720
      TabIndex        =   36
      Top             =   2400
      Width           =   495
   End
   Begin VB.Label Label22 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   3120
      TabIndex        =   33
      Top             =   2400
      Width           =   495
   End
   Begin VB.Label Label17 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "-"
      Height          =   255
      Left            =   7800
      TabIndex        =   27
      ToolTipText     =   "Oscilator Speed Tunning"
      Top             =   2880
      Width           =   1095
   End
   Begin VB.Label Label16 
      Caption         =   "Aging Offset"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5160
      TabIndex        =   26
      Top             =   2880
      Width           =   2535
   End
   Begin VB.Label Label11 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "'C"
      Height          =   255
      Left            =   7800
      TabIndex        =   23
      Top             =   2520
      Width           =   1095
   End
   Begin VB.Label Label10 
      Caption         =   "Temperature ('C)"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5160
      TabIndex        =   22
      Top             =   2520
      Width           =   2535
   End
   Begin VB.Shape Shape4 
      FillStyle       =   0  'Solid
      Height          =   255
      Left            =   7800
      Top             =   2160
      Width           =   1095
   End
   Begin VB.Label Label9 
      Caption         =   "Running"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5160
      TabIndex        =   21
      Top             =   2160
      Width           =   2535
   End
   Begin VB.Label Label12 
      Caption         =   "Date Time Valid"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5160
      TabIndex        =   12
      Top             =   1800
      Width           =   2535
   End
   Begin VB.Shape Shape3 
      FillStyle       =   0  'Solid
      Height          =   255
      Left            =   7800
      Top             =   1800
      Width           =   1095
   End
End
Attribute VB_Name = "Form7"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Function ParseInput()
Dim Temp_String As String

    
    If id_string = "RTC_TIME" Then
        Label32.Caption = ((Label1.Caption * 3600) + (Label2.Caption * 60) + Label3.Caption) - ((Hour(Now) * 3600) + (Minute(Now) * 60) + Second(Now))
        Label1.Caption = Val(Mid(value_string, 1, 2))
        UpDown12.Value = Val(Mid(value_string, 1, 2))
        Label2.Caption = Val(Mid(value_string, 4, 2))
        UpDown13.Value = Val(Mid(value_string, 4, 2))
        Label3.Caption = Val(Mid(value_string, 7, 2))
        UpDown14.Value = Val(Mid(value_string, 7, 2))
    End If
    If id_string = "RTC_DATE" Then
        Label6.Caption = Val(Mid(value_string, 1, 4))
        UpDown15.Value = Val(Mid(value_string, 1, 2))
        Label5.Caption = Val(Mid(value_string, 6, 2))
        UpDown16.Value = Val(Mid(value_string, 6, 2))
        Label4.Caption = Val(Mid(value_string, 9, 2))
        UpDown17.Value = Val(Mid(value_string, 9, 2))
    End If
    If id_string = "RTC_DAYWEEK" Then
        Select Case Val(value_string)
            Case 0
                Temp_String = "Monday"
            Case 1
                Temp_String = "Tuesday"
            Case 2
                Temp_String = "Wensday"
            Case 3
                Temp_String = "Thursday"
            Case 4
                Temp_String = "Friday"
            Case 5
                Temp_String = "Saturday"
            Case 6
                Temp_String = "Sunday"
            Case Else
                Temp_String = "ERROR"
        End Select
        Label21.Caption = Temp_String
    End If
    If id_string = "RTC_TEMP" Then Label11.Caption = value_string
    If id_string = "RTC_AGOFFS" Then Label17.Caption = Val(value_string)
    If id_string = "RTC_VALID" Then
        If value_string = "TRUE" Then
            Shape3.FillColor = vbGreen
        Else
            Shape3.FillColor = vbRed
        End If
    End If
    If id_string = "RTC_RUNNING" Then
        If value_string = "TRUE" Then
            Shape4.FillColor = vbGreen
        Else
            Shape4.FillColor = vbRed
        End If
    End If

End Function

Private Sub Check1_Click()
    If Check1.Value = 1 Then
        SendData "<RTC_32OUT=TRUE>"
    Else
        SendData "<RTC_32OUT=FALSE>"
    End If
End Sub

Private Sub Check4_Click()
    If Check4.Value = 1 Then
        Timer1.Enabled = True
    Else
        Timer1.Enabled = False
    End If
End Sub

Private Sub Command1_Click()

End Sub

Private Sub Command2_Click()
    SendData "<RTC_TIME?>"
    SendData "<RTC_DATE?>"
    SendData "<RTC_DAYWEEK?>"
    SendData "<RTC_VALID?>"
    SendData "<RTC_RUNNING?>"
    SendData "<RTC_TEMP?>"
   ' SendData "<RTC_AGOFFS?>" provoca bug que nao executa time? correctamente.. arduino side?

End Sub

Private Sub Command4_Click()
    SendData "<RTC_HOUR=" & Hour(Now) & ">"
    SendData "<RTC_MINUTE=" & Minute(Now) & ">"
    SendData "<RTC_SECOND=" & Second(Now) & ">"
    
    SendData "<RTC_YEAR=" & Year(Now) & ">"
    SendData "<RTC_MONTH=" & Month(Now) & ">"
    SendData "<RTC_DAY=" & Day(Now) & ">"
    
    SendData "<RTC_DAYWEEK?>"
    SendData "<RTC_VALID?>"
    SendData "<RTC_RUNNING?>"
    SendData "<RTC_TEMP?>"


End Sub

Private Sub Form_Load()
    SendData "<RTC_START=>"
    
    Combo4.AddItem "(H M S W) Match"
    Combo4.AddItem "Once Minute"
    Combo4.AddItem "(M) Match"
    Combo4.AddItem "(H M) Match"
    Combo4.AddItem "(H M W) Match"
    
    Combo3.AddItem "(H M S Mo) Match"
    Combo3.AddItem "Once Second"
    Combo3.AddItem "(S) Match"
    Combo3.AddItem "(M S) Match"
    Combo3.AddItem "(H M S) Match"
    Combo3.AddItem "(H M S W) Match"
    
    Combo1.AddItem "None"
    Combo1.AddItem "Battery Backup"
    Combo1.AddItem "Clock Output"
    Combo1.AddItem "Alarm 1"
    Combo1.AddItem "Alarm 2"
    Combo1.AddItem "Alarm 1 & 2"
    
    Combo2.AddItem "1 Hz"
    Combo2.AddItem "1 kHz"
    Combo2.AddItem "4 kHz"
    Combo2.AddItem "8 kHz"
    
    
End Sub

Private Sub Timer1_Timer()
    SendData "<RTC_TIME?>"
    SendData "<RTC_DATE?>"
    SendData "<RTC_DAYWEEK?>"
    SendData "<RTC_TEMP?>"

    SendData "<RTC_VALID?"
    SendData "<RTC_RUNNING?>"
End Sub

Private Sub UpDown12_DownClick()
    SendData "<RTC_HOUR=" & UpDown12.Value & ">"
End Sub

Private Sub UpDown13_DownClick()
    SendData "<RTC_MINUTE=" & UpDown13.Value & ">"
End Sub

Private Sub UpDown14_DownClick()
    SendData "<RTC_SECOND=" & UpDown14.Value & ">"
End Sub

Private Sub UpDown15_DownClick()
    SendData "<RTC_DAY=" & UpDown15.Value & ">"
End Sub

Private Sub UpDown16_DownClick()
    SendData "<RTC_MONTH=" & UpDown16.Value & ">"
End Sub

Private Sub UpDown17_DownClick()
    SendData "<RTC_YEAR=" & UpDown17.Value & ">"
End Sub



Private Sub UpDown12_UpClick()
    SendData "<RTC_HOUR=" & UpDown12.Value & ">"
End Sub

Private Sub UpDown13_UpClick()
    SendData "<RTC_MINUTE=" & UpDown13.Value & ">"
End Sub

Private Sub UpDown14_UpClick()
    SendData "<RTC_SECOND=" & UpDown14.Value & ">"
End Sub

Private Sub UpDown15_UpClick()
    SendData "<RTC_DAY=" & UpDown15.Value & ">"
End Sub

Private Sub UpDown16_UpClick()
    SendData "<RTC_MONTH=" & UpDown16.Value & ">"
End Sub

Private Sub UpDown17_UpClick()
    SendData "<RTC_YEAR=" & UpDown17.Value & ">"
End Sub

Private Sub UpDown7_DownClick()
    Label22.Caption = UpDown7.Value
    Timer1.Interval = UpDown7.Value * 1000
End Sub

Private Sub UpDown7_UpClick()
    Label22.Caption = UpDown7.Value
    Timer1.Interval = UpDown7.Value * 1000
End Sub
