VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form EIO 
   BackColor       =   &H80000010&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "MCP23017 I/O-Expander"
   ClientHeight    =   6045
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   11910
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
   MinButton       =   0   'False
   ScaleHeight     =   6045
   ScaleWidth      =   11910
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame2 
      Caption         =   "PORT B"
      Height          =   3975
      Left            =   6120
      TabIndex        =   61
      Top             =   360
      Width           =   5295
      Begin VB.CheckBox Check81 
         Height          =   255
         Left            =   240
         TabIndex        =   101
         Top             =   1440
         Width           =   255
      End
      Begin VB.CheckBox Check80 
         Height          =   255
         Left            =   720
         TabIndex        =   100
         Top             =   1440
         Width           =   255
      End
      Begin VB.CheckBox Check79 
         Height          =   255
         Left            =   1200
         TabIndex        =   99
         Top             =   1440
         Width           =   255
      End
      Begin VB.CheckBox Check78 
         Height          =   255
         Left            =   1680
         TabIndex        =   98
         Top             =   1440
         Width           =   255
      End
      Begin VB.CheckBox Check77 
         Height          =   255
         Left            =   2160
         TabIndex        =   97
         Top             =   1440
         Width           =   255
      End
      Begin VB.CheckBox Check76 
         Height          =   255
         Left            =   2640
         TabIndex        =   96
         Top             =   1440
         Width           =   255
      End
      Begin VB.CheckBox Check75 
         Height          =   255
         Left            =   3120
         TabIndex        =   95
         Top             =   1440
         Width           =   255
      End
      Begin VB.CheckBox Check74 
         Height          =   255
         Left            =   3600
         TabIndex        =   94
         Top             =   1440
         Width           =   255
      End
      Begin VB.CheckBox Check73 
         Height          =   255
         Left            =   240
         TabIndex        =   93
         Top             =   1920
         Width           =   255
      End
      Begin VB.CheckBox Check72 
         Height          =   255
         Left            =   720
         TabIndex        =   92
         Top             =   1920
         Width           =   255
      End
      Begin VB.CheckBox Check71 
         Height          =   255
         Left            =   1200
         TabIndex        =   91
         Top             =   1920
         Width           =   255
      End
      Begin VB.CheckBox Check70 
         Height          =   255
         Left            =   1680
         TabIndex        =   90
         Top             =   1920
         Width           =   255
      End
      Begin VB.CheckBox Check69 
         Height          =   255
         Left            =   2160
         TabIndex        =   89
         Top             =   1920
         Width           =   255
      End
      Begin VB.CheckBox Check68 
         Height          =   255
         Left            =   2640
         TabIndex        =   88
         Top             =   1920
         Width           =   255
      End
      Begin VB.CheckBox Check67 
         Height          =   255
         Left            =   3120
         TabIndex        =   87
         Top             =   1920
         Width           =   255
      End
      Begin VB.CheckBox Check66 
         Height          =   255
         Left            =   3600
         TabIndex        =   86
         Top             =   1920
         Width           =   255
      End
      Begin VB.CheckBox Check65 
         Caption         =   "Check18"
         Height          =   255
         Left            =   240
         TabIndex        =   85
         Top             =   2400
         Width           =   255
      End
      Begin VB.CheckBox Check64 
         Caption         =   "Check19"
         Height          =   255
         Left            =   720
         TabIndex        =   84
         Top             =   2400
         Width           =   255
      End
      Begin VB.CheckBox Check63 
         Caption         =   "Check20"
         Height          =   255
         Left            =   1200
         TabIndex        =   83
         Top             =   2400
         Width           =   255
      End
      Begin VB.CheckBox Check62 
         Caption         =   "Check21"
         Height          =   255
         Left            =   1680
         TabIndex        =   82
         Top             =   2400
         Width           =   255
      End
      Begin VB.CheckBox Check61 
         Caption         =   "Check22"
         Height          =   255
         Left            =   2160
         TabIndex        =   81
         Top             =   2400
         Width           =   255
      End
      Begin VB.CheckBox Check60 
         Caption         =   "Check23"
         Height          =   255
         Left            =   2640
         TabIndex        =   80
         Top             =   2400
         Width           =   255
      End
      Begin VB.CheckBox Check59 
         Caption         =   "Check24"
         Height          =   255
         Left            =   3120
         TabIndex        =   79
         Top             =   2400
         Width           =   255
      End
      Begin VB.CheckBox Check58 
         Caption         =   "Check25"
         Height          =   255
         Left            =   3600
         TabIndex        =   78
         Top             =   2400
         Width           =   255
      End
      Begin VB.CheckBox Check57 
         Caption         =   "Check26"
         Height          =   255
         Left            =   240
         TabIndex        =   77
         Top             =   2880
         Width           =   255
      End
      Begin VB.CheckBox Check56 
         Caption         =   "Check27"
         Height          =   255
         Left            =   720
         TabIndex        =   76
         Top             =   2880
         Width           =   255
      End
      Begin VB.CheckBox Check55 
         Caption         =   "Check28"
         Height          =   255
         Left            =   1200
         TabIndex        =   75
         Top             =   2880
         Width           =   255
      End
      Begin VB.CheckBox Check54 
         Caption         =   "Check29"
         Height          =   255
         Left            =   1680
         TabIndex        =   74
         Top             =   2880
         Width           =   255
      End
      Begin VB.CheckBox Check53 
         Caption         =   "Check30"
         Height          =   255
         Left            =   2160
         TabIndex        =   73
         Top             =   2880
         Width           =   255
      End
      Begin VB.CheckBox Check52 
         Height          =   255
         Left            =   2640
         TabIndex        =   72
         Top             =   2880
         Width           =   255
      End
      Begin VB.CheckBox Check51 
         Height          =   255
         Left            =   3120
         TabIndex        =   71
         Top             =   2880
         Width           =   255
      End
      Begin VB.CheckBox Check50 
         Height          =   255
         Left            =   3600
         TabIndex        =   70
         Top             =   2880
         Width           =   255
      End
      Begin VB.CheckBox Check49 
         Caption         =   "Check34"
         Height          =   315
         Left            =   240
         TabIndex        =   69
         Top             =   960
         Width           =   255
      End
      Begin VB.CheckBox Check48 
         Caption         =   "Check35"
         Height          =   315
         Left            =   720
         TabIndex        =   68
         Top             =   960
         Width           =   255
      End
      Begin VB.CheckBox Check47 
         Caption         =   "Check36"
         Height          =   255
         Left            =   1200
         TabIndex        =   67
         Top             =   960
         Width           =   255
      End
      Begin VB.CheckBox Check46 
         Caption         =   "Check37"
         Height          =   255
         Left            =   1680
         TabIndex        =   66
         Top             =   960
         Width           =   255
      End
      Begin VB.CheckBox Check45 
         Caption         =   "Check38"
         Height          =   255
         Left            =   2160
         TabIndex        =   65
         Top             =   960
         Width           =   255
      End
      Begin VB.CheckBox Check44 
         Caption         =   "Check39"
         Height          =   255
         Left            =   2640
         TabIndex        =   64
         Top             =   960
         Width           =   255
      End
      Begin VB.CheckBox Check43 
         Caption         =   "Check40"
         Height          =   315
         Left            =   3120
         TabIndex        =   63
         Top             =   960
         Width           =   255
      End
      Begin VB.CheckBox Check42 
         Caption         =   "Check41"
         Height          =   315
         Left            =   3600
         TabIndex        =   62
         Top             =   960
         Width           =   255
      End
      Begin VB.Shape Shape33 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   240
         Top             =   360
         Width           =   255
      End
      Begin VB.Shape Shape32 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   720
         Top             =   360
         Width           =   255
      End
      Begin VB.Shape Shape31 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   1200
         Top             =   360
         Width           =   255
      End
      Begin VB.Shape Shape30 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   1680
         Top             =   360
         Width           =   255
      End
      Begin VB.Shape Shape29 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   2160
         Top             =   360
         Width           =   255
      End
      Begin VB.Shape Shape28 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   2640
         Top             =   360
         Width           =   255
      End
      Begin VB.Shape Shape27 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   3120
         Top             =   360
         Width           =   255
      End
      Begin VB.Shape Shape26 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   3600
         Top             =   360
         Width           =   255
      End
      Begin VB.Label Label32 
         Alignment       =   2  'Center
         Caption         =   "7"
         Height          =   255
         Left            =   240
         TabIndex        =   116
         Top             =   720
         Width           =   255
      End
      Begin VB.Label Label31 
         Alignment       =   2  'Center
         Caption         =   "6"
         Height          =   255
         Left            =   720
         TabIndex        =   115
         Top             =   720
         Width           =   255
      End
      Begin VB.Label Label30 
         Alignment       =   2  'Center
         Caption         =   "5"
         Height          =   255
         Left            =   1200
         TabIndex        =   114
         Top             =   720
         Width           =   255
      End
      Begin VB.Label Label29 
         Alignment       =   2  'Center
         Caption         =   "4"
         Height          =   255
         Left            =   1680
         TabIndex        =   113
         Top             =   720
         Width           =   255
      End
      Begin VB.Label Label28 
         Alignment       =   2  'Center
         Caption         =   "3"
         Height          =   255
         Left            =   2160
         TabIndex        =   112
         Top             =   720
         Width           =   255
      End
      Begin VB.Label Label27 
         Alignment       =   2  'Center
         Caption         =   "2"
         Height          =   255
         Left            =   2640
         TabIndex        =   111
         Top             =   720
         Width           =   255
      End
      Begin VB.Label Label26 
         Alignment       =   2  'Center
         Caption         =   "1"
         Height          =   255
         Left            =   3120
         TabIndex        =   110
         Top             =   720
         Width           =   255
      End
      Begin VB.Label Label25 
         Alignment       =   2  'Center
         Caption         =   "0"
         Height          =   255
         Left            =   3600
         TabIndex        =   109
         Top             =   720
         Width           =   255
      End
      Begin VB.Label Label24 
         Alignment       =   2  'Center
         BackColor       =   &H80000000&
         Caption         =   "I/O Status"
         Height          =   255
         Left            =   4200
         TabIndex        =   108
         Top             =   360
         Width           =   975
      End
      Begin VB.Label Label23 
         Alignment       =   2  'Center
         BackColor       =   &H80000000&
         Caption         =   "EN INT"
         Height          =   255
         Left            =   4200
         TabIndex        =   107
         Top             =   1440
         Width           =   975
      End
      Begin VB.Label Label22 
         Alignment       =   2  'Center
         BackColor       =   &H80000000&
         Caption         =   "DEFAULT"
         Height          =   255
         Left            =   4200
         TabIndex        =   106
         Top             =   1920
         Width           =   975
      End
      Begin VB.Label Label21 
         Alignment       =   2  'Center
         BackColor       =   &H80000000&
         Caption         =   "PULLUP"
         Height          =   255
         Left            =   4200
         TabIndex        =   105
         Top             =   2400
         Width           =   975
      End
      Begin VB.Label Label20 
         Alignment       =   2  'Center
         BackColor       =   &H80000000&
         Caption         =   "PIN OUT"
         Height          =   255
         Left            =   4200
         TabIndex        =   104
         Top             =   2880
         Width           =   975
      End
      Begin VB.Label Label19 
         Alignment       =   2  'Center
         BackColor       =   &H80000000&
         Caption         =   "INT FLAG"
         Height          =   255
         Left            =   4200
         TabIndex        =   103
         Top             =   3360
         Width           =   975
      End
      Begin VB.Shape Shape25 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   240
         Top             =   3360
         Width           =   255
      End
      Begin VB.Shape Shape24 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   720
         Top             =   3360
         Width           =   255
      End
      Begin VB.Shape Shape23 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   1200
         Top             =   3360
         Width           =   255
      End
      Begin VB.Shape Shape22 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   1680
         Top             =   3360
         Width           =   255
      End
      Begin VB.Shape Shape21 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   2160
         Top             =   3360
         Width           =   255
      End
      Begin VB.Shape Shape20 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   2640
         Top             =   3360
         Width           =   255
      End
      Begin VB.Shape Shape19 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   3120
         Top             =   3360
         Width           =   255
      End
      Begin VB.Shape Shape18 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   3600
         Top             =   3360
         Width           =   255
      End
      Begin VB.Label Label18 
         Alignment       =   2  'Center
         BackColor       =   &H80000000&
         Caption         =   "SET"
         Height          =   255
         Left            =   4200
         TabIndex        =   102
         Top             =   960
         Width           =   975
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "PORT A"
      Height          =   3975
      Left            =   480
      TabIndex        =   5
      Top             =   360
      Width           =   5295
      Begin VB.CheckBox Check41 
         Caption         =   "Check41"
         Height          =   315
         Left            =   3600
         TabIndex        =   59
         Top             =   960
         Width           =   255
      End
      Begin VB.CheckBox Check40 
         Caption         =   "Check40"
         Height          =   315
         Left            =   3120
         TabIndex        =   58
         Top             =   960
         Width           =   255
      End
      Begin VB.CheckBox Check39 
         Caption         =   "Check39"
         Height          =   255
         Left            =   2640
         TabIndex        =   57
         Top             =   960
         Width           =   255
      End
      Begin VB.CheckBox Check38 
         Caption         =   "Check38"
         Height          =   255
         Left            =   2160
         TabIndex        =   56
         Top             =   960
         Width           =   255
      End
      Begin VB.CheckBox Check37 
         Caption         =   "Check37"
         Height          =   255
         Left            =   1680
         TabIndex        =   55
         Top             =   960
         Width           =   255
      End
      Begin VB.CheckBox Check36 
         Caption         =   "Check36"
         Height          =   255
         Left            =   1200
         TabIndex        =   54
         Top             =   960
         Width           =   255
      End
      Begin VB.CheckBox Check35 
         Caption         =   "Check35"
         Height          =   315
         Left            =   720
         TabIndex        =   53
         Top             =   960
         Width           =   255
      End
      Begin VB.CheckBox Check34 
         Caption         =   "Check34"
         Height          =   315
         Left            =   240
         TabIndex        =   52
         Top             =   960
         Width           =   255
      End
      Begin VB.CheckBox Check33 
         Caption         =   "Check33"
         Height          =   255
         Left            =   3600
         TabIndex        =   50
         Top             =   2880
         Width           =   255
      End
      Begin VB.CheckBox Check32 
         Caption         =   "Check32"
         Height          =   255
         Left            =   3120
         TabIndex        =   49
         Top             =   2880
         Width           =   255
      End
      Begin VB.CheckBox Check31 
         Caption         =   "Check31"
         Height          =   255
         Left            =   2640
         TabIndex        =   48
         Top             =   2880
         Width           =   255
      End
      Begin VB.CheckBox Check30 
         Caption         =   "Check30"
         Height          =   255
         Left            =   2160
         TabIndex        =   47
         Top             =   2880
         Width           =   255
      End
      Begin VB.CheckBox Check29 
         Caption         =   "Check29"
         Height          =   255
         Left            =   1680
         TabIndex        =   46
         Top             =   2880
         Width           =   255
      End
      Begin VB.CheckBox Check28 
         Caption         =   "Check28"
         Height          =   255
         Left            =   1200
         TabIndex        =   45
         Top             =   2880
         Width           =   255
      End
      Begin VB.CheckBox Check27 
         Caption         =   "Check27"
         Height          =   255
         Left            =   720
         TabIndex        =   44
         Top             =   2880
         Width           =   255
      End
      Begin VB.CheckBox Check26 
         Caption         =   "Check26"
         Height          =   255
         Left            =   240
         TabIndex        =   43
         Top             =   2880
         Width           =   255
      End
      Begin VB.CheckBox Check25 
         Caption         =   "Check25"
         Height          =   255
         Left            =   3600
         TabIndex        =   42
         Top             =   2400
         Width           =   255
      End
      Begin VB.CheckBox Check24 
         Caption         =   "Check24"
         Height          =   255
         Left            =   3120
         TabIndex        =   41
         Top             =   2400
         Width           =   255
      End
      Begin VB.CheckBox Check23 
         Caption         =   "Check23"
         Height          =   255
         Left            =   2640
         TabIndex        =   40
         Top             =   2400
         Width           =   255
      End
      Begin VB.CheckBox Check22 
         Caption         =   "Check22"
         Height          =   255
         Left            =   2160
         TabIndex        =   39
         Top             =   2400
         Width           =   255
      End
      Begin VB.CheckBox Check21 
         Caption         =   "Check21"
         Height          =   255
         Left            =   1680
         TabIndex        =   38
         Top             =   2400
         Width           =   255
      End
      Begin VB.CheckBox Check20 
         Caption         =   "Check20"
         Height          =   255
         Left            =   1200
         TabIndex        =   37
         Top             =   2400
         Width           =   255
      End
      Begin VB.CheckBox Check19 
         Caption         =   "Check19"
         Height          =   255
         Left            =   720
         TabIndex        =   36
         Top             =   2400
         Width           =   255
      End
      Begin VB.CheckBox Check18 
         Caption         =   "Check18"
         Height          =   255
         Left            =   240
         TabIndex        =   35
         Top             =   2400
         Width           =   255
      End
      Begin VB.CheckBox Check17 
         Height          =   255
         Left            =   3600
         TabIndex        =   33
         Top             =   1920
         Width           =   255
      End
      Begin VB.CheckBox Check16 
         Height          =   255
         Left            =   3120
         TabIndex        =   32
         Top             =   1920
         Width           =   255
      End
      Begin VB.CheckBox Check15 
         Height          =   255
         Left            =   2640
         TabIndex        =   31
         Top             =   1920
         Width           =   255
      End
      Begin VB.CheckBox Check14 
         Height          =   255
         Left            =   2160
         TabIndex        =   30
         Top             =   1920
         Width           =   255
      End
      Begin VB.CheckBox Check13 
         Height          =   255
         Left            =   1680
         TabIndex        =   29
         Top             =   1920
         Width           =   255
      End
      Begin VB.CheckBox Check12 
         Height          =   255
         Left            =   1200
         TabIndex        =   28
         Top             =   1920
         Width           =   255
      End
      Begin VB.CheckBox Check11 
         Height          =   255
         Left            =   720
         TabIndex        =   27
         Top             =   1920
         Width           =   255
      End
      Begin VB.CheckBox Check10 
         Height          =   255
         Left            =   240
         TabIndex        =   26
         Top             =   1920
         Width           =   255
      End
      Begin VB.CheckBox Check9 
         Height          =   255
         Left            =   3600
         TabIndex        =   21
         Top             =   1440
         Width           =   255
      End
      Begin VB.CheckBox Check8 
         Height          =   255
         Left            =   3120
         TabIndex        =   20
         Top             =   1440
         Width           =   255
      End
      Begin VB.CheckBox Check7 
         Height          =   255
         Left            =   2640
         TabIndex        =   19
         Top             =   1440
         Width           =   255
      End
      Begin VB.CheckBox Check6 
         Height          =   255
         Left            =   2160
         TabIndex        =   18
         Top             =   1440
         Width           =   255
      End
      Begin VB.CheckBox Check5 
         Height          =   255
         Left            =   1680
         TabIndex        =   17
         Top             =   1440
         Width           =   255
      End
      Begin VB.CheckBox Check4 
         Height          =   255
         Left            =   1200
         TabIndex        =   16
         Top             =   1440
         Width           =   255
      End
      Begin VB.CheckBox Check3 
         Height          =   255
         Left            =   720
         TabIndex        =   15
         Top             =   1440
         Width           =   255
      End
      Begin VB.CheckBox Check2 
         Height          =   255
         Left            =   240
         TabIndex        =   14
         Top             =   1440
         Width           =   255
      End
      Begin VB.Label Label17 
         Alignment       =   2  'Center
         BackColor       =   &H80000000&
         Caption         =   "SET"
         Height          =   255
         Left            =   4200
         TabIndex        =   60
         Top             =   960
         Width           =   975
      End
      Begin VB.Shape Shape17 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   3600
         Top             =   3360
         Width           =   255
      End
      Begin VB.Shape Shape16 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   3120
         Top             =   3360
         Width           =   255
      End
      Begin VB.Shape Shape15 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   2640
         Top             =   3360
         Width           =   255
      End
      Begin VB.Shape Shape14 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   2160
         Top             =   3360
         Width           =   255
      End
      Begin VB.Shape Shape13 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   1680
         Top             =   3360
         Width           =   255
      End
      Begin VB.Shape Shape12 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   1200
         Top             =   3360
         Width           =   255
      End
      Begin VB.Shape Shape11 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   720
         Top             =   3360
         Width           =   255
      End
      Begin VB.Shape Shape10 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   240
         Top             =   3360
         Width           =   255
      End
      Begin VB.Label Label16 
         Alignment       =   2  'Center
         BackColor       =   &H80000000&
         Caption         =   "INT FLAG"
         Height          =   255
         Left            =   4200
         TabIndex        =   51
         Top             =   3360
         Width           =   975
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         BackColor       =   &H80000000&
         Caption         =   "PIN OUT"
         Height          =   255
         Left            =   4200
         TabIndex        =   34
         Top             =   2880
         Width           =   975
      End
      Begin VB.Label Label12 
         Alignment       =   2  'Center
         BackColor       =   &H80000000&
         Caption         =   "PULLUP"
         Height          =   255
         Left            =   4200
         TabIndex        =   25
         Top             =   2400
         Width           =   975
      End
      Begin VB.Label Label11 
         Alignment       =   2  'Center
         BackColor       =   &H80000000&
         Caption         =   "DEFAULT"
         Height          =   255
         Left            =   4200
         TabIndex        =   24
         Top             =   1920
         Width           =   975
      End
      Begin VB.Label Label10 
         Alignment       =   2  'Center
         BackColor       =   &H80000000&
         Caption         =   "EN INT"
         Height          =   255
         Left            =   4200
         TabIndex        =   23
         Top             =   1440
         Width           =   975
      End
      Begin VB.Label Label9 
         Alignment       =   2  'Center
         BackColor       =   &H80000000&
         Caption         =   "I/O Status"
         Height          =   255
         Left            =   4200
         TabIndex        =   22
         Top             =   360
         Width           =   975
      End
      Begin VB.Label Label8 
         Alignment       =   2  'Center
         Caption         =   "0"
         Height          =   255
         Left            =   3600
         TabIndex        =   13
         Top             =   720
         Width           =   255
      End
      Begin VB.Label Label7 
         Alignment       =   2  'Center
         Caption         =   "1"
         Height          =   255
         Left            =   3120
         TabIndex        =   12
         Top             =   720
         Width           =   255
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         Caption         =   "2"
         Height          =   255
         Left            =   2640
         TabIndex        =   11
         Top             =   720
         Width           =   255
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Caption         =   "3"
         Height          =   255
         Left            =   2160
         TabIndex        =   10
         Top             =   720
         Width           =   255
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         Caption         =   "4"
         Height          =   255
         Left            =   1680
         TabIndex        =   9
         Top             =   720
         Width           =   255
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         Caption         =   "5"
         Height          =   255
         Left            =   1200
         TabIndex        =   8
         Top             =   720
         Width           =   255
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         Caption         =   "6"
         Height          =   255
         Left            =   720
         TabIndex        =   7
         Top             =   720
         Width           =   255
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         Caption         =   "7"
         Height          =   255
         Left            =   240
         TabIndex        =   6
         Top             =   720
         Width           =   255
      End
      Begin VB.Shape Shape8 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   3600
         Top             =   360
         Width           =   255
      End
      Begin VB.Shape Shape7 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   3120
         Top             =   360
         Width           =   255
      End
      Begin VB.Shape Shape6 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   2640
         Top             =   360
         Width           =   255
      End
      Begin VB.Shape Shape5 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   2160
         Top             =   360
         Width           =   255
      End
      Begin VB.Shape Shape4 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   1680
         Top             =   360
         Width           =   255
      End
      Begin VB.Shape Shape3 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   1200
         Top             =   360
         Width           =   255
      End
      Begin VB.Shape Shape2 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   720
         Top             =   360
         Width           =   255
      End
      Begin VB.Shape Shape1 
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   240
         Top             =   360
         Width           =   255
      End
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   5400
      Top             =   5400
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Auto Update"
      Height          =   255
      Left            =   3480
      TabIndex        =   1
      Top             =   5160
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Update All"
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   5160
      Width           =   1695
   End
   Begin MSComCtl2.UpDown UpDown1 
      Height          =   255
      Left            =   4920
      TabIndex        =   2
      Top             =   5520
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   450
      _Version        =   393216
      Value           =   1000
      BuddyControl    =   "Label14"
      BuddyDispid     =   196760
      OrigLeft        =   4920
      OrigTop         =   5520
      OrigRight       =   5175
      OrigBottom      =   5775
      Increment       =   250
      Max             =   5000
      Min             =   250
      SyncBuddy       =   -1  'True
      BuddyProperty   =   65537
      Enabled         =   -1  'True
   End
   Begin VB.Shape Shape34 
      FillStyle       =   0  'Solid
      Height          =   495
      Left            =   11280
      Top             =   5040
      Width           =   495
   End
   Begin VB.Shape Shape9 
      Height          =   855
      Left            =   3360
      Top             =   5040
      Width           =   1935
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   12000
      Y1              =   4800
      Y2              =   4800
   End
   Begin VB.Label Label13 
      Alignment       =   2  'Center
      Caption         =   "ms"
      Height          =   255
      Left            =   4440
      TabIndex        =   4
      Top             =   5520
      Width           =   375
   End
   Begin VB.Label Label14 
      Alignment       =   2  'Center
      Caption         =   "1000"
      Height          =   255
      Left            =   3480
      TabIndex        =   3
      Top             =   5520
      Width           =   825
   End
End
Attribute VB_Name = "EIO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Check1_Click()
    Timer1.Enabled = Check1.Value
End Sub

Private Sub Check42_Click()
    SendData "<EIO_SPIN=8>", TCA_EIO
    If Check42.Value = 1 Then
        SendData "<EIO_DW=HIGH>", TCA_EIO
    Else
        SendData "<EIO_DW=LOW>", TCA_EIO
    End If
End Sub

Private Sub Check43_Click()
    SendData "<EIO_SPIN=9>", TCA_EIO
    If Check43.Value = 1 Then
        SendData "<EIO_DW=HIGH>", TCA_EIO
    Else
        SendData "<EIO_DW=LOW>", TCA_EIO
    End If
End Sub

Private Sub Check44_Click()
    SendData "<EIO_SPIN=10>", TCA_EIO
    If Check44.Value = 1 Then
        SendData "<EIO_DW=HIGH>", TCA_EIO
    Else
        SendData "<EIO_DW=LOW>", TCA_EIO
    End If
End Sub

Private Sub Check45_Click()
    SendData "<EIO_SPIN=11>", TCA_EIO
    If Check45.Value = 1 Then
        SendData "<EIO_DW=HIGH>", TCA_EIO
    Else
        SendData "<EIO_DW=LOW>", TCA_EIO
    End If
End Sub

Private Sub Check50_Click()
    SendData "<EIO_SPIN=8>", TCA_EIO
    If Check50.Value = 1 Then
        SendData "<EIO_PM=OUT>", TCA_EIO
    Else
        SendData "<EIO_DW=IN>", TCA_EIO
    End If
End Sub

Private Sub Check51_Click()
    SendData "<EIO_SPIN=9>", TCA_EIO
    If Check51.Value = 1 Then
        SendData "<EIO_PM=OUT>", TCA_EIO
    Else
        SendData "<EIO_DW=IN>", TCA_EIO
    End If
End Sub

Private Sub Check52_Click()
    SendData "<EIO_SPIN=10>", TCA_EIO
    If Check52.Value = 1 Then
        SendData "<EIO_PM=OUT>", TCA_EIO
    Else
        SendData "<EIO_DW=IN>", TCA_EIO
    End If
End Sub

Private Sub Check53_Click()
    SendData "<EIO_SPIN=11>", TCA_EIO
    If Check53.Value = 1 Then
        SendData "<EIO_PM=OUT>", TCA_EIO
    Else
        SendData "<EIO_DW=IN>", TCA_EIO
    End If
End Sub

Private Sub Command1_Click()
    SendData "<EIO_RALL?>", TCA_EIO

End Sub

Private Sub Form_Load()
    SendData "<EIO_START=>", TCA_EIO
    
End Sub

Function Pin_Show(Setting As Long)
    If Setting And 1 Then Shape8.FillColor = vbRed Else Shape8.FillColor = vbBlack
    If Setting And 2 Then Shape7.FillColor = vbRed Else Shape7.FillColor = vbBlack
    If Setting And 4 Then Shape6.FillColor = vbRed Else Shape6.FillColor = vbBlack
    If Setting And 8 Then Shape5.FillColor = vbRed Else Shape5.FillColor = vbBlack
    If Setting And 16 Then Shape4.FillColor = vbRed Else Shape4.FillColor = vbBlack
    If Setting And 32 Then Shape3.FillColor = vbRed Else Shape3.FillColor = vbBlack
    If Setting And 64 Then Shape2.FillColor = vbRed Else Shape2.FillColor = vbBlack
    If Setting And 128 Then Shape1.FillColor = vbRed Else Shape1.FillColor = vbBlack
    
    If Setting And 1 Then Check41.Value = 1 Else Check41.Value = 0
    If Setting And 2 Then Check40.Value = 1 Else Check40.Value = 0
    If Setting And 4 Then Check39.Value = 1 Else Check39.Value = 0
    If Setting And 8 Then Check38.Value = 1 Else Check38.Value = 0
    If Setting And 16 Then Check37.Value = 1 Else Check37.Value = 0
    If Setting And 32 Then Check36.Value = 1 Else Check36.Value = 0
    If Setting And 64 Then Check35.Value = 1 Else Check35.Value = 0
    If Setting And 128 Then Check34.Value = 1 Else Check34.Value = 0
    
    
    If Setting And 256 Then Shape26.FillColor = vbRed Else Shape26.FillColor = vbBlack
    If Setting And 512 Then Shape27.FillColor = vbRed Else Shape27.FillColor = vbBlack
    If Setting And 1024 Then Shape28.FillColor = vbRed Else Shape28.FillColor = vbBlack
    If Setting And 2048 Then Shape29.FillColor = vbRed Else Shape29.FillColor = vbBlack
    If Setting And 4096 Then Shape30.FillColor = vbRed Else Shape30.FillColor = vbBlack
    If Setting And 8192 Then Shape31.FillColor = vbRed Else Shape31.FillColor = vbBlack
    If Setting And 16384 Then Shape32.FillColor = vbRed Else Shape32.FillColor = vbBlack
    If Setting And 32768 Then Shape33.FillColor = vbRed Else Shape33.FillColor = vbBlack
    
    If Setting And 256 Then Check42.Value = 1 Else Check42.Value = 0
    If Setting And 512 Then Check43.Value = 1 Else Check43.Value = 0
    If Setting And 1024 Then Check44.Value = 1 Else Check44.Value = 0
    If Setting And 2048 Then Check45.Value = 1 Else Check45.Value = 0
    If Setting And 4096 Then Check46.Value = 1 Else Check46.Value = 0
    If Setting And 8192 Then Check47.Value = 1 Else Check47.Value = 0
    If Setting And 16384 Then Check48.Value = 1 Else Check48.Value = 0
    If Setting And 32768 Then Check49.Value = 1 Else Check49.Value = 0

    
    
End Function

Function Parse_EIO()
    Select Case id_string
        Case "EIO_RALL"
            Pin_Show CLng("&H" & value_string)
        Case "EIO_WALL"
            Pin_Show CLng("&H" & value_string)
        Case "EIO_START"
            Shape34.FillColor = vbGreen
        Case "EIO_DW"
        Case "EIO_DR"
    End Select
End Function


Private Sub Timer1_Timer()
    SendData "<EIO_RALL?>", TCA_EIO
End Sub

Private Sub UpDown1_Change()
    Timer1.Interval = UpDown1.Value
End Sub
