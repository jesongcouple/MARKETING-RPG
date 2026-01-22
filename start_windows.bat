@echo off
set PORT=5500
title JUN HYEOK RPG - Local Server
where python >nul 2>nul
if errorlevel 1 (
  echo [!] Python not found. Please install Python or run via VS Code Live Server.
  pause
  exit /b
)
start "" cmd /k "python -m http.server %PORT%"
timeout /t 2 >nul
REM Try common Chrome paths, then generic
set CHROME1=C:\Program Files\Google\Chrome\Application\chrome.exe
set CHROME2=C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
if exist "%CHROME1%" (
  start "" "%CHROME1%" http://localhost:%PORT%
) else if exist "%CHROME2%" (
  start "" "%CHROME2%" http://localhost:%PORT%
) else (
  start "" chrome http://localhost:%PORT%
)
