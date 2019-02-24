# AudioLoader

This contains the header files, implementation files, and build script for the `stb_vorbis`, `dr_wav`, `dr_flac`, and `dr_mp3` libraries. These are used to load audio files in the Prism pipeline project, and support a variety of audio types.

Contains the following libraries:

* stb_vorbis (v1.15)
* dr_wav (v0.9.0)
* dr_flac (v0.11.1)
* dr_mp3 (v0.4.2)

## Building

1. Get the updated version of the library files from Github.
2. Place the new files into this directory.
3. Run the build script for your platform.
4. Open/Run the solution/Makefile and build the library
5. Copy the library from the `build/bin/` folder and place it into the root `Native/` folder.
6. Give the library the correct extension for the platform.
7. Update the versions in this file.
