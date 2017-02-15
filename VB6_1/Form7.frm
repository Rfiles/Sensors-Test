VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form Form7 
   BackColor       =   &H80000010&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "RTC DS3231"
   ClientHeight    =   5415
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   9180
   LinkTopic       =   "Form7"
   MaxButton       =   0   'False
   ScaleHeight     =   5415
   ScaleWidth      =   9180
   StartUpPosition =   2  'CenterScreen
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
      TabIndex        =   41
      Top             =   2040
      Width           =   1695
   End
   Begin MSComCtl2.UpDown UpDown7 
      Height          =   255
      Left            =   3720
      TabIndex        =   40
      Top             =   2400
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   450
      _Version        =   393216
      Value           =   5
      Max             =   100
      Min             =   5
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
      Left            =   3000
      TabIndex        =   25
      Top             =   4560
      Width           =   1935
   End
   Begin VB.Frame Frame4 
      BackColor       =   &H8000000C&
      Caption         =   "Misc"
      Height          =   1575
      Left            =   5160
      TabIndex        =   11
      Top             =   3480
      Width           =   3735
      Begin VB.CheckBox Check1 
         Caption         =   "Enable 32kHz pin"
         Height          =   255
         Left            =   120
         TabIndex        =   26
         Top             =   240
         Width           =   1575
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         Left            =   1920
         TabIndex        =   21
         Text            =   "Frequency"
         Top             =   600
         Width           =   1695
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   120
         TabIndex        =   20
         Text            =   "Pin Mode"
         Top             =   600
         Width           =   1695
      End
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H8000000C&
      Caption         =   "Alarm 2"
      Height          =   1455
      Left            =   240
      TabIndex        =   10
      Top             =   3600
      Width           =   2535
      Begin VB.CheckBox Check3 
         Caption         =   "Repeat"
         Height          =   255
         Left            =   1200
         TabIndex        =   38
         Top             =   600
         Width           =   1215
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Enable"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1200
         TabIndex        =   35
         Top             =   240
         Width           =   1215
      End
      Begin MSComCtl2.UpDown UpDown3 
         Height          =   255
         Left            =   840
         TabIndex        =   34
         Top             =   960
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   450
         _Version        =   393216
         Enabled         =   -1  'True
      End
      Begin MSComCtl2.UpDown UpDown2 
         Height          =   255
         Left            =   840
         TabIndex        =   33
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
         TabIndex        =   32
         Top             =   240
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   450
         _Version        =   393216
         Enabled         =   -1  'True
      End
      Begin VB.Label Label20 
         Alignment       =   2  'Center
         Caption         =   "0"
         Height          =   255
         Left            =   120
         TabIndex        =   31
         Top             =   960
         Width           =   735
      End
      Begin VB.Label Label19 
         Alignment       =   2  'Center
         Caption         =   "0"
         Height          =   255
         Left            =   120
         TabIndex        =   30
         Top             =   600
         Width           =   735
      End
      Begin VB.Label Label18 
         Alignment       =   2  'Center
         Caption         =   "0"
         Height          =   255
         Left            =   120
         TabIndex        =   29
         Top             =   240
         Width           =   735
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H8000000C&
      Caption         =   "Alarm 1"
      Height          =   1575
      Left            =   240
      TabIndex        =   9
      Top             =   1800
      Width           =   2535
      Begin VB.CheckBox Check2 
         Caption         =   "Repeat"
         Height          =   255
         Left            =   1200
         TabIndex        =   37
         Top             =   720
         Width           =   1215
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Enable"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1200
         TabIndex        =   19
         Top             =   360
         Width           =   1215
      End
      Begin MSComCtl2.UpDown UpDown4 
         Height          =   255
         Left            =   840
         TabIndex        =   16
         Top             =   360
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
         Top             =   720
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
         Top             =   1080
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   450
         _Version        =   393216
         Enabled         =   -1  'True
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         Caption         =   "0"
         Height          =   255
         Left            =   120
         TabIndex        =   15
         Top             =   1080
         Width           =   735
      End
      Begin VB.Label Label14 
         Alignment       =   2  'Center
         Caption         =   "0"
         Height          =   255
         Left            =   120
         TabIndex        =   14
         Top             =   720
         Width           =   735
      End
      Begin VB.Label Label13 
         Alignment       =   2  'Center
         Caption         =   "0"
         Height          =   255
         Left            =   120
         TabIndex        =   13
         Top             =   360
         Width           =   735
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H8000000A&
      Caption         =   "Frame1"
      Height          =   1335
      Left            =   240
      TabIndex        =   0
      Top             =   360
      Width           =   8655
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
         Left            =   4080
         TabIndex        =   36
         Top             =   840
         Width           =   2535
      End
      Begin VB.Label Label8 
         Caption         =   "Alarm 2"
         Height          =   255
         Left            =   7200
         TabIndex        =   8
         Top             =   600
         Width           =   735
      End
      Begin VB.Label Label7 
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
      Left            =   4080
      TabIndex        =   42
      Top             =   2400
      Width           =   495
   End
   Begin VB.Label Label22 
      Alignment       =   2  'Center
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
      Height          =   255
      Left            =   3120
      TabIndex        =   39
      Top             =   2400
      Width           =   495
   End
   Begin VB.Label Label17 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "-"
      Height          =   255
      Left            =   7800
      TabIndex        =   28
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
      TabIndex        =   27
      Top             =   2880
      Width           =   2535
   End
   Begin VB.Label Label11 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "'C"
      Height          =   255
      Left            =   7800
      TabIndex        =   24
      Top             =   2520
      Width           =   1095
   End
   Begin VB.Label Label10 
      Caption         =   "Temperature"
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
      TabIndex        =   23
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
      TabIndex        =   22
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
        Label1.Caption = Val(Mid(value_string, 1, 2))
        Label2.Caption = Val(Mid(value_string, 4, 2))
        Label3.Caption = Val(Mid(value_string, 7, 2))
    End If
    If id_string = "RTC_DATE" Then
        Label6.Caption = Val(Mid(value_string, 1, 4))
        Label5.Caption = Val(Mid(value_string, 6, 2))
        Label4.Caption = Val(Mid(value_string, 9, 2))
    End If
    If id_string = "RTC_DAYWEEK" Then
        Select Case Val(value_string)
            Case 1
                Temp_String = "Monday"
            Case 2
                Temp_String = "Tuesday"
            Case 3
                Temp_String = "Wensday"
            Case 4
                Temp_String = "Thursday"
            Case 5
                Temp_String = "Friday"
            Case 6
                Temp_String = "Saturday"
            Case 7
                Temp_String = "Sunday"
            Case Else
                Temp_String = "ERROR"
        End Select
        Label21.Caption = Temp_String
    End If



End Function

Private Sub Command2_Click()
    SendData "<RTC_TIME?>"
    SendData "<RTC_DATE?>"
    SendData "<RTC_DAYWEEK?>"
    SendData "<RTC_VALID?>"
    SendData "<RTC_RUNNING?>"
    SendData "<RTC_TEMP?>"
    SendData "<RTC_AGOFFS?>"

End Sub

Private Sub Form_Load()
    SendData "<RTC_START=>"
End Sub
