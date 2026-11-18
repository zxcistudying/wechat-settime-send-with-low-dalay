@echo off
setlocal

set "SCRIPT_DIR=%~dp0"
set "SCRIPT=%SCRIPT_DIR%wechat_timed_send.ahk"

if exist "%ProgramFiles%\AutoHotkey\v2\AutoHotkey64.exe" (
  "%ProgramFiles%\AutoHotkey\v2\AutoHotkey64.exe" "%SCRIPT%"
  exit /b %errorlevel%
)

if exist "%ProgramFiles%\AutoHotkey\AutoHotkey64.exe" (
  "%ProgramFiles%\AutoHotkey\AutoHotkey64.exe" "%SCRIPT%"
  exit /b %errorlevel%
)

if exist "%LocalAppData%\Programs\AutoHotkey\v2\AutoHotkey64.exe" (
  "%LocalAppData%\Programs\AutoHotkey\v2\AutoHotkey64.exe" "%SCRIPT%"
  exit /b %errorlevel%
)

echo AutoHotkey v2 was not found.
echo Please install AutoHotkey v2 from https://www.autohotkey.com/
pause

