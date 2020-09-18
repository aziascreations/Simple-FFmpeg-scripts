@echo off

echo FFmpeg MKV to MP4
if [%1] == [] goto error-no-arg
echo.

call %~d0%~p0ffmpeg-config.bat

echo Operation summary:
echo * Input:  %1
echo * Output: %~d1%~p1%~n1.mp4
echo * Command: %FFMPEG% -i "%1" %FFMPEG_VERBOSE_COMMAND% -codec copy "%~d1%~p1%~n1.mp4"

if exist %~d1%~p1%~n1.mp4 (
	echo * Output file already exists :(
	goto end
)

:choice
echo.
choice /C YN /M "Do you want to convert "
if ERRORLEVEL ==2 goto end
if ERRORLEVEL ==1 goto convert
goto choice

:convert
echo.
%FFMPEG% -i "%1" %FFMPEG_VERBOSE_COMMAND% -codec copy "%~d1%~p1%~n1.mp4"
goto end

:error-no-arg
echo You haven't provided a file, please drop it on the script !
goto end

:end
echo.
pause
