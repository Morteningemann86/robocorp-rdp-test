*** Settings ***
Documentation       Open Notepad app, writes "Hello World", takes a screenshot and exits Notepad app.

Library             RPA.Windows
Library             Screenshot


*** Tasks ***
RDP Test
    Windows Run    notepad
    Send Keys    keys=Hello World
    Take Screenshot    screenshot.jpeg
    [Teardown]    Run Teardown


*** Keywords ***
Run Teardown
    Windows Run    taskkill /IM notepad.exe /F
