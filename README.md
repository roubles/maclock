# maclock - command line OSX screen lock

A simple bash script to lock your macs from the command line. 

By default it will just launch the screen saver, but it can also mute the audio and put the display to sleep.

```
Usage: maclock [--mute] [--display] [--all]

       --mute    : mute the audio
       --display : sleep the display
       --quiet   : no output
       --all     : --mute and --display
```

## Install

### Step 1 - Get code
```
$ git clone https://github.com/roubles/maclock.git
```

### Step 2 - Install
```
$ cd maclock
$ sudo ./install.sh
```

## Run

### Option 1 - Launch Screen Saver
```
$ maclock
```

### Option 2 - Launch Screen Saver and mute audio
```
$ maclock --mute
```

### Option 3 - Launch Screen Saver and sleep display
```
$ maclock --display
```

### Option 4 - Launch Screen Saver and all of the above
```
$ maclock --all
```

## Uninstall
```
$ cd maclock
$ sudo ./uninstall.sh
```
