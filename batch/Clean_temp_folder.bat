@echo off

cd /D %temp%
for /d %%D in (*) do rd /s /q "%%D"
del /f /q *

echo --------------------------------------------
echo Cleaned all possible files in Temp folder
echo --------------------------------------------
pause
exit
