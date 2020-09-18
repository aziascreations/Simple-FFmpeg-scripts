@echo off

echo FFmpeg MKV to MP4
echo * Input:  %1
echo * Output: %~d1%~p1%~n1.mp4

if exist %~d1%~p1%~n1.mp4 (
	echo * Output file already exists :(
	goto end
)

:choice
choice /C YN /M "Do you want to convert "
if ERRORLEVEL ==2 goto end
if ERRORLEVEL ==1 goto convert
goto choice

:convert
ffmpeg -i "%1" -codec copy %~n1.mp4

:end
pause
