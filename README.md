# Mac OS X Scripts
This is a personal collection of scripts and workflows I use on my Mac systems, most of which are created by myself. All non-original works are located under the `vendor/` directory.

#### TODO:
- create a file watcher that can automatically inject ruby scripts into `.workflow` packages on `.rb` file modification--after all, they're just XML files under the hood

## AppleScripts
Place the contents of this directory in `/Users/<username>/Library` to use

- `toggle-function-keys`

    Toggles operation of function keys between special keyboard actions, (such as volume controls) and normal function keys. Helpful for smaller keyboards.
- `resize-rhosimulator-iphone`

    Automatically resizes the [RhoMobile](http://rhomobile.com/) [RhoSimulator](http://docs.rhomobile.com/en/2.2.0/rhodes/simulator) iPhone window at application start.

## Automator workflows
I use these workflows to create contextual menu services for handy tasks like compression. Place the contents of this directory in `/Users/<username>/Library` to use

- `Scan-with-DaisyDisk`

    Opens the folder in [DaisyDisk](http://www.daisydiskapp.com/), a gorgeous app for disk space management.
- `Tar-and-Gzip`

    Creates a 'tarball' (a TAR archive compressed using gzip) from selected file or folder (in same directory).

---
**DISCLAIMER:** Scripts in this repository may contain code taken from online sources, for which I claim neither ownership nor authorship. I will do my best to attribute credit to the original authors, and to supply and adhere to all appropriate licenses. I utilize these scripts and the GitHub service with the understanding that I am not violating any law in doing so. If any legal concern were to arise regarding my use of these scripts or the GitHub service, please contact me immediately, and I will enact any and all measures necessary to rectify the situation.
