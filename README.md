# Mac OS X Stuff

**DISCLAIMER:** There are scripts contained in this repository that contain code taken from online sources, for which I claim neither ownership nor authorship. I will do my best to attribute credit to the original authors and provide software licenses where pertinent. I provide and utilize these scripts with the understanding that in doing so, I am not violating any law. If there is any copyright or licensing information missing from this repository which should be included, please contact me ASAP or submit a pull request, so the situation may be corrected.

---
This is my personal collection of scripts, workflows, and software tools for setting up, configuring, and managing Mac OS X 10.9 Mavericks and related system software. The repo is meant to be cloned upon installation of Mac OSX, and once I setup an init script, it will function as a one-time installer and configuration tool for implementing all of my juicy hacks and customizations.

Naturally I would prefer to be doing my development entirely in Linux, but we can't all be perfect. I personally rely on [Path Finder](http://cocoatech.com/pathfinder/) to ease my woes in the meantime; they've done a smashing job of implementing features that Apple should have in their native OS (sometimes followed by actual releases of similar functionality by Apple, in which case it's 'revolutionary').

### AppleScripts
Place the contents of this directory in `/Users/<username>/Library` to use

- `toggle-function-keys`

    Toggles operation of function keys between special keyboard actions, (such as volume controls) and normal function keys. Helpful for smaller keyboards.
- `resize-rhosimulator-iphone`

    Automatically resizes the RhoSimulator iPhone window at application start.

### Automator workflows
I use these workflows to create contextual menu services for handy tasks like compression. Place the contents of this directory in `/Users/<username>/Library` to use

- `Scan-with-DaisyDisk`

    Opens the folder in DaisyDisk, a gorgeous app for disk space management.
- `Tar-and-Gzip`

    Creates a TAR archive of the folder or file with gzip compression (in the same directory).

## Ruby scripts
Every mac system has Ruby installed these days, so forget Bash, man.

#### `shortcuts.rb`
Creates executables for accessing software in an easier manner, as well as executing common command sequences. Read the inline documentation in the file for more detailed info.

#### `init.rb`
This is the file that bootstraps everything needed for installation and setup, such as Homebrew, the beast Mac package manager.

## Bash Scripts
Some of these are just Bash versions of my Ruby scripts

#### `configure-defaults.bash` 
I like to customize the behavior of OS X by tweaking a few settings.

#### `nuke-ruby.bash`
I would be careful about giving this one executable permissions.
