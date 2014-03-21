# Mac OS X Scripts
A set of configuration, initialization, and installation scripts and tools for Mac OS X 10.9 Mavericks

**DISCLAIMER**: There are scripts contained in this repository taken from online sources, for which I claim neither ownership nor authorship. I will do my best to attribute credit to the original authors and provide software licenses where pertinent. I provide and utilize these scripts with the understanding that in doing so, I am not violating any law. If there is any copyright or licensing information missing from this repository which should be included, please contact me ASAP or submit a pull request, so the situation may be rectified.

---
### `/bash`
- `configure-defaults` Customizations to the default system configuration
- `create-shortcuts` Common useful aliases which link existing programs into a binary executable directory, providing access to the programs via CLI.
- `init` Initialization scripts to be run on a clean OS X installation

#### `/Scripts`
Place this directory in `/Users/<username>/Library` to use

- `toggle-function-keys`

    Toggles operation of function keys between special keyboard actions, (such as volume controls) and normal function keys. Helpful for smaller keyboards.
- `resize-rhosimulator-iphone`

    Automatically resizes the RhoSimulator iPhone window at application start.

#### `/Services`
Automator workflows. Can be installed by double-clicking; note that the file is moved, not copied. Place this directory in `/Users/<username>/Library` to use

- `Scan-with-DaisyDisk`

    Opens the folder in DaisyDisk, a gorgeous app for disk space management.
- `Tar-and-Gzip`

    Creates a TAR archive of the folder or file with gzip compression (in the same directory).