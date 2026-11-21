@echo off
setlocal
set PSEXE=powershell.exe -NoProfile -ExecutionPolicy Bypass
if "%~1"=="" (
  %PSEXE% -WindowStyle Hidden -File "%~dp0locks-fils.ps1" -Op Gui
) else (
  %PSEXE% -File "%~dp0locks-fils.ps1" %*
)
endlocal
