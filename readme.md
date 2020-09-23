# Simple FFmpeg scripts
A couple of scripts to "automate" some tasks with ffmpeg.

## Installation
All you need to do is have ffmpeg installed and available in your `%PATH%` variable.

If you want to check you can do it this way:
* Open a command prompt:
  * <kbd>Windows</kbd>+<kbd>R</kbd> and type `cmd` in the newly openned window.
  * Open the start menu and type `cmd`
* Once you have your command prompt open, simply type `where ffmpeg` to see if Windows can find ffmpeg in your `%PATH%` variable.

<br>

If you found it using this method, you can start using the scripts, otherwise continue reading.

<br>

To download and install ffmpeg, follow these instructions:
* Download ffmpeg "full" from the official website: https://ffmpeg.org/
* Extract it where you want it to be installed.
* Now go into the `bin/` folder and copy the folder path.
  * Click the bar at the top of your explorer window and copy the text
  * It should look like this `C:\{install-path}\ffmpeg\bin`

If you don't want to modify your `PATH` variables, check the [Configuring (custom path)](custom-path) section.

Now to add ffmpeg to your `%PATH%` variable, we need to do this:
* Press <kbd>Windows</kbd>+<kbd>Pause</kbd> to open the system window.
* Click the `Advanced system settings` link on the left.
* Go to the `Advanced tab` and click on the button that says `Environment Variables`
* If you are on Windows 10 follow these instructions:
  * In the bottom list, scroll to the one named `Path` and double-click it.
  * Click on `New`
  * And paste the text you copied earlier
  * Now just click on ok in all the windows and you are good to go.
* If you are on an earlier version of windows, follow these instructions:
  * Check an online tutorial on how to edit the path
  * Make copies, and system backups, it is really easy to mess up.
  * Maybe upgrade to Windows 10

To test if you installed ffmpeg correctly, you simply have to reopen a new command prompt to make sure the modified `%PATH%` variable is used.<br>
And then simply follow the first list of instructions at the top of this section.

## Using
Simply find the script and video you want to use, and drag-and-drop the video file on top of the script.

## Configuring
To configure the scripts, you can simply edit parts of the `ffmpeg-config.bat` file.<br>
This script is called by every script in this repo and is used to set and configure some parameters.

### Custom Path
If you want to set a custom path to your `ffmpeg.exe`, you can modify the line #12 and put the absolute path with the executable appended to it like so:<br>
`set FFMPEG="C:\Program Files\ffmpeg\bin\ffmpeg.exe"`

And then you can modify the line #7 like so:<br>
`set USE_CUSTOM_PATH=1`

### Verbosity
If you want ffmpeg to show you it's progress, you can change the line #24 from:<br>
`set FFMPEG_FULL_VERBOSE=1`<br>
to:<br>
`set FFMPEG_FULL_VERBOSE=0`

### Compression level
If you want to change the compression level, you can edit the line #41 like so:<br>
`set FFMPEG_CRF_X26X=${level}`<br>
where `${level}` is the compression level you want to use.

The default value for x26_ codecs is 24, and the value can range from 0 to 51 where 0 is lossless, and 51 is the worst quality possible.

## Scripts

### compress-x264-crf24
This script is used to compress mp4 and/or mkv files with the x264 codec.<br>

#### Warnings:
<b>This should only be used if your hardware doesn't support x265.</b><br>
<b>There WILL be compression artifact in the final video.</b>

<br>

### compress-x265-crf24
This script is used to compress mp4 and/or mkv files with the x265 codec.

#### Warning:
<b>There WILL be compression artifact in the final video.</b>

<br>

### convert-mkv-to-mp4
This script simply changes the video container from mkv to mp4 and doesn't touch the video.
