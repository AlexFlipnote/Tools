@echo off

where ffmpeg
where youtube-dl
cls
IF %ERRORLEVEL% NEQ 0 (
  ECHO You have to install both ffmpeg and youtube-dl
  pause
  exit
)

set /p input="YouTube URL to download: "
youtube-dl --extract-audio --prefer-ffmpeg --audio-format mp3 %input%
