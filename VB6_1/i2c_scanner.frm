VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Begin VB.Form i2c_scanner 
   BackColor       =   &H80000011&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "I2C Scanner"
   ClientHeight    =   5100
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   8415
   LinkTopic       =   "Form6"
   MaxButton       =   0   'False
   ScaleHeight     =   5100
   ScaleWidth      =   8415
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "Scan With I2C Multiplexer"
      Height          =   495
      Left            =   3360
      TabIndex        =   4
      Top             =   1200
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Normal I2C Scan"
      Height          =   495
      Left            =   3360
      TabIndex        =   3
      Top             =   480
      Width           =   1575
   End
   Begin MSComctlLib.ListView ListView2 
      Height          =   4455
      Left            =   5040
      TabIndex        =   2
      Top             =   480
      Width           =   3015
      _ExtentX        =   5318
      _ExtentY        =   7858
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   3
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "#"
         Object.Width           =   529
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Alignment       =   2
         SubItemIndex    =   1
         Text            =   "Addr"
         Object.Width           =   1235
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Alignment       =   2
         SubItemIndex    =   2
         Text            =   "Name"
         Object.Width           =   3175
      EndProperty
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   4455
      Left            =   240
      TabIndex        =   1
      Top             =   480
      Width           =   3015
      _ExtentX        =   5318
      _ExtentY        =   7858
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
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
         Alignment       =   2
         SubItemIndex    =   1
         Text            =   "Name"
         Object.Width           =   3175
      EndProperty
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H80000010&
      Caption         =   "This Can Scan I2C addresses with MPU6050 slave i2c and TCA9548A Multiplexer"
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
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   8415
   End
End
Attribute VB_Name = "i2c_scanner"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim ScanWithTCA As Boolean


Private Sub Command1_Click()
    ListView1.ListItems.Clear
    SendData "<I2C_SCAN?>", TCA_NONE
End Sub

Function parse_i2cscan_normal()
    ScanWithTCA = False
    ListView1.ListItems.Add.Text = value_string
    ListView1.ListItems.Item(ListView1.ListItems.Count).ListSubItems.Add.Text = I2C_Addr2Name(Val(value_string))

End Function

Function parse_i2cscan_tca()
    ScanWithTCA = True

    'If id_string = "I2C_SCAN" Then ListView1.ListItems.Item(1).ListSubItems.Add.Text = Val(value_string)
    
    ListView2.ListItems.Add.Text = Right(id_string, 1)
    ListView2.ListItems.Item(ListView2.ListItems.Count).ListSubItems.Add.Text = Val(value_string)
    ListView2.ListItems.Item(ListView2.ListItems.Count).ListSubItems.Add.Text = I2C_Addr2Name(Val(value_string))
    
    'TreeView1.Nodes.Add.Text = Right(id_string, 1)
    'TreeView1.nodes.add(,,,"OLA")
    
    
End Function

Function I2C_Addr2Name(addr As Integer) As String

  Select Case addr
    Case 30
      I2C_Addr2Name = "HMC5883L"
      
    Case 32
      I2C_Addr2Name = "MCP23017"
      
    Case 35
      I2C_Addr2Name = "BH1750FVI"
    
    Case 41
      I2C_Addr2Name = "TCS34725"

    Case 54
      I2C_Addr2Name = "MAX17043"

    Case 56
      I2C_Addr2Name = "VEML6070_H"

    Case 57
      I2C_Addr2Name = "VEML6070_L"

    Case 64
      I2C_Addr2Name = "INA219"
      
    Case 72
      I2C_Addr2Name = "ADS1115"
      
    Case 83
      I2C_Addr2Name = "AT24C32 Pin(A2)=1"

    'Case 87
    '  I2C_Addr2Name = "? DS3231"
    
    Case 90
      I2C_Addr2Name = "MLX90614"

    Case 104
      I2C_Addr2Name = "MPU6050/DS3231"
    
    Case 112
      I2C_Addr2Name = "TCA9548A"

    Case 118
      I2C_Addr2Name = "BME280"

    Case 119
      I2C_Addr2Name = "BMP180"

    Case Else
      I2C_Addr2Name = "Unknown"

    End Select
End Function

Private Sub Command2_Click()
    ListView2.ListItems.Clear
    SendData "<I2CSCAN_TCA?>", TCA_NONE
End Sub


