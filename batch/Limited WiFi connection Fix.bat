@echo off

netsh int tcp set heuristics disabled
netsh int tcp set global autotuninglevel=disabled
netsh int tcp set global rss=enabled

if %ERRORLEVEL% EQU 0 (
  echo Done, please reboot your PC for this to take effect!
  pause
  exit
) else (
  cls
  echo Please try again with Administrator rights
  pause
  exit
)
