# maclock - Command Line OSX Screen Lock

A simple bash script to lock your mac from the command line. 

By default maclock will just launch the screen saver, but it can also mute the audio and put the display to sleep.

```
Usage: maclock [-m] [-d] [-q] [-a]

       -m, --mute    : mute the audio
       -d, --display : sleep the display
       -q, --quiet   : no output
       -a, --all     : --mute and --display
```

## Install

```
curl -sSL https://raw.github.com/roubles/maclock/master/webinstall.sh | bash
```

## Run

### Option 1 - Launch screen saver
```
$ maclock
```

### Option 2 - Launch screen saver and mute audio
```
$ maclock --mute
OR
$ maclock -m
```

### Option 3 - Launch screen saver and sleep display
```
$ maclock --display
OR
$ maclock -d
```

### Option 4 - Launch screen saver and all of the above
```
$ maclock --all
OR
$ maclock -a
```

### Option 5 - Launch screen saver and all of the above (quietly)
```
$ maclock --all --quiet
OR
$ maclock -a -q
```

## Other options
Mere mortals may get by with keyboard shortcuts such as:
Ctrl-Shift-⏏ Eject (on older Macs),
Ctrl-Shift-⌽ Power (on newer macs)

Or, if you like to use the trackpad or mouse, you can use Hot Corners.

Call me oldschool, but I like the command line. The commands that this script essentially encapsulates are:
```
$ open -a ScreenSaverEngine    # Launch screen saver
$ osascript -e "set Volume 0"  # Mute audio
$ pmset displaysleepnow        # Display sleep
```

## Uninstall
```
$ curl -sSL https://raw.github.com/roubles/maclock/master/webuninstall.sh | bash
```
