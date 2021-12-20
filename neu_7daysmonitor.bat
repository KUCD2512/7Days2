@echo off

:loopstart
  tasklist | findstr -i 7DaysToDieServer.exe

  if %errorlevel% EQU 0 goto running
  
  echo 7D2D Server is not running, starting it...
  start "7 Days To Die Server" /d "D:\steamcmd\steamapps\common\7 Days to Die Dedicated Server" "D:\steamcmd\steamapps\common\7 Days to Die Dedicated Server\startdedicated.bat"
  REM give it time to get started
  timeout 60
  goto delay
  
:running
echo 7D2D Server is already running...

:delay
REM this is the wait between each check
timeout /t 15 /nobreak
goto loopstart

:end