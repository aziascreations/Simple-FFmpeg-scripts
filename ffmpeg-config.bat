@echo off
echo Reading config...

:: Set to 1 if you want to use a custom path
:: You will also have to set it BTW.
:config-path
set USE_CUSTOM_PATH=0
if "%USE_CUSTOM_PATH%"=="1" (goto path-yes)
goto path-no

:path-yes
set FFMPEG="C:\Program Files\ffmpeg\bin\ffmpeg.exe"
echo Using custom path
goto config-verbose

:path-no
set FFMPEG=ffmpeg
echo Using default path
goto config-verbose


:: Set to 0 if you want to get the complete output from ffmpeg
:config-verbose
set FFMPEG_FULL_VERBOSE=1
if "%FFMPEG_FULL_VERBOSE%"=="1" (goto verbose-yes)
goto verbose-no

:verbose-yes
set FFMPEG_VERBOSE_COMMAND=-loglevel warning
echo Using reduced verbosity
goto compression-params

:verbose-no
set FFMPEG_VERBOSE_COMMAND=
echo Using full verbosity
goto compression-params


:: The range of the quantizer scale is 0-51: where 0 is lossless, 23 is default, and 51 is worst possible. A lower value is a higher quality
:compression-params
set FFMPEG_CRF_X26X=24
goto end


:: Done :)
:end
echo Done !
echo.
