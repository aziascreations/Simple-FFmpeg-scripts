@echo off

echo FFmpeg Compress video to x265
echo * Input:  %1
echo * Output: %~d1%~p1%~n1.compressed.mp4

if exist %~d1%~p1%~n1.compressed.mp4 (
	echo * Output file already exists :(
	goto end
)

:choice
choice /C YN /M "Do you want to transcode "
if ERRORLEVEL ==2 goto end
if ERRORLEVEL ==1 goto compress
goto choice

:compress
ffmpeg -i "%1" -vcodec libx265 -crf 24 %~n1.compressed.mp4

:end
pause
