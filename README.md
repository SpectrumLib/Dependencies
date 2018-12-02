Native library dependencies for [Spectrum](https://github.com/SpectrumLib/Spectrum). Some are provided precompiled, others have compilation projects included.

This repository simply acts as a convenience for use with the main Spectrum library. All libraries are simply rehosted, and carry their original licenses and links to their original project and/or author pages. We claim authorship of none of the libraries found in this repository.

### Organization

This repo is organized by library; each library has its own folder where the native binaries can be found. The binaries are differentiated by platform by the extension:

* `w` = Windows
* `l` = Linux
* `m` = MacOS

Libraries that also include their own compilation projects can be found in the `Compile` folder, and then again organized by library. There will be scripts in each one that can be used to build, compile, and copy all of the libraries to the correct place without ever having to open an IDE (although you will need Visual Studio installed to compile Windows binaries).

When available, the native libraries are explicitly built in 64-bit, and in `Release` configuration.

For the native libraries that must be compiled from the repo, the [Premake](https://premake.github.io/index.html) tool is used to generate compiler projects in a cross-platform fashion.

### Runtime

These native libraries are embedded into the Spectrum library as the "Embedded Resource" content type. At runtime, Spectrum chooses the correct libraries to unpack, based on the current operating system, and then puts them into the same directory as the main library before they are loaded and used. While this makes the Spectrum binary a bit larger, and adds the unnecessary cruft of unusable binaries, it does allow the same single file to be used for all platforms without any changes.


## Libraries

### [GLFW3](https://www.glfw.org/)

* Author: Camilla Löwy (Github: elmindreda)
* License: [zlib/libpng](https://github.com/glfw/glfw/blob/master/LICENSE.md)
* Description: The input and windowing library used by Spectrum to create the application window and handle window and input events.

### [OpenAL Soft](https://kcat.strangesoft.net/openal.html)

* Author: kcat
* License: [GNU LGPL v2](https://github.com/kcat/openal-soft/blob/master/COPYING)
* Description: Software implementation of the OpenAL standard, used by Spectrum for audio playback and recording.

### [stb_vorbis](https://github.com/nothings/stb)

* Author: Sean T. Barrett (Github: nothings)
* License: Public Domain
* Description: Single-file stb_vorbis.c is used for decoding OGG Vorbis audio files in the custom `audio` native library.

### [dr_libs](https://github.com/mackron/dr_libs)

* Author: David Reid (Github: mackron)
* License: Public Domain
* Description: Single-file dr_flac.h and dr_wav.h are used for decoding FLAC and WAV audio files in the custom `audio` native library.