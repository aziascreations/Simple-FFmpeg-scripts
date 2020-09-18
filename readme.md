# Simple FFmpeg scripts

A couple of scripts to "automate" some stuff with ffmpeg.

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


## Scripts

### compress-x265-crf24

This script is used to compress mp4 [and/or mkv] file[s] with the x265 codec.

Internal command: `ffmpeg -i "%1" -vcodec libx265 -crf 24 %~n1.compressed.mp4`

### convert-mkv-to-mp4

This script simply changes the video container from mkv to mp4.

Internal command: `ffmpeg -i "%1" -codec copy %~n1.mp4`
