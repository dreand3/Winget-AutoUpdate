@echo off

SET arguments=-UpdatesAtLogon -UpdatesInterval Weekly -StartMenuShortcut

powershell -Command "Get-ChildItem -Path '%~dp0' -Recurse | Unblock-File; Start-Process powershell.exe -Argument '-noprofile -executionpolicy bypass -file """%~dp0Winget-AutoUpdate-Install.ps1"" %arguments%'" -Verb RunAs