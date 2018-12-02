# Audio Loader

This is a custom native library cobbled together from two separate public domain projects. It provides audio loading for WAV, OGG (Vorbis), and FLAC audio files. Its component parts are:

* [dr_wav.h](https://github.com/mackron/dr_libs/blob/master/dr_wav.h)
* [dr_flac.h](https://github.com/mackron/dr_libs/blob/master/dr_flac.h)
* [stb_vorbis.c](https://github.com/nothings/stb/blob/master/stb_vorbis.c)
* impl.c - An additional file that simply causes the dr_* files to compile their implementations.

There are no changes to the source files, and it is not compiled with any special flags or features. It is compiled in x64 Release mode, with optimization for speed.

To build the project, simply run `build.bat` in Windows, or `build.sh` on *nix. On Windows, you will additionally need to open the solution in Visual Studio and build it manually. You will then need to manually copy the resulting library in `build/bin` into the top level `Audio` folder, and give the library the proper extension for the platform.