VERSION 5.00
Begin VB.Form AboutBox 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "PAA Downloader"
   ClientHeight    =   2805
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   2535
   Icon            =   "AboutBox.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2805
   ScaleWidth      =   2535
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picture1 
      Height          =   1185
      Left            =   120
      Picture         =   "AboutBox.frx":0442
      ScaleHeight     =   1125
      ScaleWidth      =   2250
      TabIndex        =   4
      Top             =   120
      Width           =   2310
   End
   Begin VB.Label Label6 
      Caption         =   "Download group information for your prog or steal HTML in a prog."
      Height          =   480
      Left            =   120
      TabIndex        =   3
      Top             =   1800
      Width           =   2415
   End
   Begin VB.Line Line4 
      BorderColor     =   &H80000010&
      X1              =   120
      X2              =   2400
      Y1              =   2385
      Y2              =   2385
   End
   Begin VB.Line Line3 
      BorderColor     =   &H80000014&
      X1              =   120
      X2              =   2400
      Y1              =   2400
      Y2              =   2400
   End
   Begin VB.Line Line1 
      BorderColor     =   &H80000010&
      X1              =   120
      X2              =   2400
      Y1              =   1680
      Y2              =   1680
   End
   Begin VB.Line Line2 
      BorderColor     =   &H80000014&
      X1              =   120
      X2              =   2400
      Y1              =   1695
      Y2              =   1695
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Caption         =   "http://paa.11net.com"
      Height          =   195
      Left            =   120
      TabIndex        =   2
      Top             =   2520
      Width           =   1530
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "- ChiChis"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   120
      TabIndex        =   0
      Top             =   1335
      Width           =   945
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "- ChiChis"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000014&
      Height          =   300
      Left            =   150
      TabIndex        =   1
      Top             =   1365
      Width           =   945
   End
End
Attribute VB_Name = "AboutBox"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Label3_Click()

End Sub

Private Sub Label5_Click()

End Sub
