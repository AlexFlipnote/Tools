@echo off

where ffmpeg
cls
IF %ERRORLEVEL% NEQ 0 (
  ECHO You might need to install ffmpeg
  pause
  exit
)

set /p input="YouTube URL to download: "
youtube-dl --extract-audio --prefer-ffmpeg --audio-format mp3 %input%
