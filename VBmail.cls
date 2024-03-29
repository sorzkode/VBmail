'
' █████   █████ ███████████                             ███  ████ 
'░░███   ░░███ ░░███░░░░░███                           ░░░  ░░███ 
' ░███    ░███  ░███    ░███ █████████████    ██████   ████  ░███ 
' ░███    ░███  ░██████████ ░░███░░███░░███  ░░░░░███ ░░███  ░███ 
' ░░███   ███   ░███░░░░░███ ░███ ░███ ░███   ███████  ░███  ░███ 
'  ░░░█████░    ░███    ░███ ░███ ░███ ░███  ███░░███  ░███  ░███ 
'    ░░███      ███████████  █████░███ █████░░████████ █████ █████
'     ░░░      ░░░░░░░░░░░  ░░░░░ ░░░ ░░░░░  ░░░░░░░░ ░░░░░ ░░░░░                                                              
'
'Virtually Basic E-mail Template 
'
'Acts as an e-mail template for Outlook where you can specify recipients (To, CC, BCC), subject line, and message body
'
'Author:
'Mister Riley
'sorzkode@proton.me
'https://github.com/sorzkode

'MIT License
'Copyright (c) 2024 Mister Riley
'Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation 
'files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, 
'modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software 
'is furnished to do so, subject to the following conditions:
'The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
'THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES 
'OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE 
'LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR 
'IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
'
Sub VBmail()
    On Error GoTo ErrorHandler
    
    Dim emailApplication As Object
    Dim emailItem As Object
    
    Set emailApplication = CreateObject("Outlook.Application")
    Set emailItem = emailApplication.CreateItem(0)
    
    emailItem.to = Range("VBmail!C54").Value
    emailItem.CC = Range("VBmail!C55").Value
    emailItem.BCC = Range("VBmail!C56").Value
    emailItem.Subject = Range("VBmail!G12").value
    emailItem.HTMLBody = Range("VBmail!G14").value
    
    emailItem.Display
    
    Set emailItem = Nothing
    Set emailApplication = Nothing
    
    Exit Sub
    
ErrorHandler:
    MsgBox "An error occurred: " & Err.Description
    
    Set emailItem = Nothing
    Set emailApplication = Nothing
End Sub                                                             