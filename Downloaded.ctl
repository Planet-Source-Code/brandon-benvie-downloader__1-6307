VERSION 5.00
Begin VB.UserControl Downloader 
   ClientHeight    =   1125
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   2235
   InvisibleAtRuntime=   -1  'True
   ScaleHeight     =   1125
   ScaleWidth      =   2235
   ToolboxBitmap   =   "Downloaded.ctx":0000
End
Attribute VB_Name = "Downloader"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
'###########################################
'# Info                                    #
'#                                         #
'# Creator: ChiChis                        #
'# Date: Jan. 29, 2000                     #
'# Made with help/example from: N/A        #
'###########################################
'# Description                             #
'#                                         #
'# This example shows you how to download  #
'# text from a file off the internet.  It  #
'# in itself is not a very good exmaple of #
'# how to make an Active X control, but    #
'# because of the nature of the way the    #
'# text is downloaded, it has to be in a   #
'# control. This could work as an HTML     #
'# stealer, latest information getter, or  #
'# many other things.                      #
'###########################################
'# How To Use                              #
'#                                         #
'# You can either compiule the control and #
'# include it with your program or just    #
'# compile the control into your program.  #
'# If you want to compile it into a        #
'# program, you must first set the         #
'# "Public" property to false. To call it, #
'# put the control on a form, then type:   #
'# TheText = Downloader1.DownloadText      #
'# "http://www.blah.com/text.txt")         #
'# or any other address.  It can be any    #
'# file, not just text, but it will only   #
'# display the text.  Therefore,           #
'# downloading programs is not possible.   #
'###########################################

'Variable stuff
Option Explicit
Dim DownloadedText As String, Downloading As Boolean

Public Sub ShowAboutBox()
Attribute ShowAboutBox.VB_UserMemId = -552
Attribute ShowAboutBox.VB_MemberFlags = "40"
    'Show about box
    AboutBox.Show vbModal
    Unload AboutBox
    Set AboutBox = Nothing
End Sub

Private Sub UserControl_AsyncReadComplete(AsyncProp As AsyncProperty)
    Dim TextByteArray() As Byte, i As Integer, BuildText As String
    On Error Resume Next
    'Get the byte array returned from the download
    TextByteArray() = AsyncProp.Value
    'Turn the byte array into a regular VB string
    For i = 0 To UBound(TextByteArray)
        BuildText = BuildText + Chr(TextByteArray(i))
    Next
    DownloadedText = BuildText
    Downloading = False
End Sub

Public Function DownloadText(URL As String, Optional TimeoutSeconds As Integer = 10)
    Dim OldTime As Double, CurTime As Double
    'Make sure it's not already downloading
    If Downloading = True Then Exit Function
    'Prelimanary check of address
    If Not Left(URL, 7) = "http://" Then
        DownloadText = "<invalid address>"
        Exit Function
    End If
    'Start the download
    Downloading = True
    UserControl.AsyncRead URL, 2, vbNullString, vbAsyncReadForceUpdate
    'Wait until download is complete
    OldTime = Timer
    Do
        DoEvents
        CurTime = Timer - OldTime
        'If it has taken longer than TimeoutSeconds (default 10 seconds) return error and exit
        If CurTime > TimeoutSeconds Then
            DownloadText = "<invalid address>"
            Exit Function
        End If
    Loop Until Downloading = False
    'Final check of the return value
    If DownloadedText = "" Then
        DownloadText = "<invalid address>"
    Else
        DownloadText = DownloadedText
    End If
End Function

Private Sub UserControl_Resize()
    'Keep size of graphic
    UserControl.Picture = AboutBox.Picture1.Picture
    Size 2235, 1125
End Sub
