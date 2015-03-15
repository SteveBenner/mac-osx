# Mac OS X Scripts
This is my personal collection of scripts and Automator Workflows for use on Mac systems.

#### TODO:
- create a file watcher that can automatically inject ruby scripts into `.workflow` packages on `.rb` file modification--after all, they're just XML files under the hood

## AppleScripts
Place contents within in `/Users/$USER/Library/Scripts/` to install.

- `toggle-function-keys`

    Toggles operation of function keys between special keyboard actions, (such as volume controls) and normal function keys. Helpful for smaller keyboards.
- `resize-rhosimulator-iphone`

    Automatically resizes the [RhoMobile](http://rhomobile.com/) [RhoSimulator](http://docs.rhomobile.com/en/2.2.0/rhodes/simulator) iPhone window at application start.

## Automator Workflows
I use these workflows to create contextual menu services for handy tasks like compression. Place contents of this directory in `/Users/$USER/Library/Services/` to install.

- `Scan-with-DaisyDisk`

    Opens the folder in [DaisyDisk](http://www.daisydiskapp.com/), a gorgeous app for disk space management.
- `Tar-and-Gzip`

    Creates a 'tarball' (a TAR archive compressed using gzip) from selected file or folder in the current working directory.

---
**DISCLAIMER:** Files in this repository may contain code taken from online sources for which I claim neither ownership nor authorship. I will do my best to attribute credit where due, and to supply and adhere to any relevant licenses for such code. If detected, please report improper licensing or usage of any material within this repository by creating an issue.
