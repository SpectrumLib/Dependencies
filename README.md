# Spectrum Dependencies

Native and managed library dependencies for [Spectrum](https://github.com/SpectrumLib/Spectrum). 

Some are provided precompiled, others have compilation projects included.

All libraries are simply rehosted, and carry their original licenses and links to their original project and/or author pages. We claim authorship of none of the libraries found in this repository.

### Repo Organization

The organization of the repository is into 4 top-level folders:

* `Managed`: The managed library dependencies, as they are meant to be consumed by the Spectrum project.
* `Native`: The native (unmanaged) library dependencies, as they are meant to be consumed by the Spectrum project.
* `Source`: The documentation, scripts, source code, ect... that are used to build the dependencies. They are divided into their various projects within this folder.
* `Tools`: The meta-tools used to build the dependencies, such as ILRepack, and Premake executables for the 3 main desktop OSes.

### Native Library Naming

The native libraries are named in such a way that they can be easily grouped, but differentiated by the operating system they were build for.

The same library will have the same base name for all target systems, but will have the following extensions:

* `w` - Windows
* `l` - Linux (built using Ubuntu 16.04 where possible), designed to run on recent Debian-based flavors
* `m` - MacOS

They consistent name and different extensions are required by the Spectrum and Prism runtimes to work properly. They are used as `Embedded Resource`s within the libraries,
and the correct library for the current platform is selected, extracted, and loaded at runtime.

For the native libraries that must be compiled from the repo, the [Premake](https://premake.github.io/index.html) tool is used to generate compiler projects in a cross-platform fashion.

# Native Libraries

### [GLFW3](https://www.glfw.org/)

* Author: Camilla Löwy (Github: elmindreda)
* License: [zlib/libpng](https://github.com/glfw/glfw/blob/master/LICENSE.md)
* Description: The input and windowing library used by Spectrum to create the application window and handle window and input events.

### [OpenAL Soft](https://kcat.strangesoft.net/openal.html)

* Author: kcat
* License: [GNU LGPL v2](https://github.com/kcat/openal-soft/blob/master/COPYING)
* Description: Software implementation of the OpenAL standard, used by Spectrum for audio playback and recording.

# Managed Libraries

### [VulkanCore](https://github.com/discosultan/VulkanCore)

* Author: Jaanus Varus (Github: discosultan)
* License: [MIT](https://github.com/discosultan/VulkanCore/blob/master/LICENSE)
* Description: C# bindings for Vulkan, slightly modified to target .NET Standard 2.0, and with the extra dependencies removed.

### [K4os.Compression.LZ4](https://github.com/MiloszKrajewski/K4os.Compression.LZ4)

* Author: Milosz Krajewski (Github: MiloszKrajewski)
* License: [MIT](https://github.com/MiloszKrajewski/K4os.Compression.LZ4/blob/master/LICENSE)
* Description: Managed implementation of the LZ4 compression standard, used to compress/decompress content items.

### [SixLabors.ImageSharp](https://github.com/SixLabors/ImageSharp)

* Authors: Multiple (see Github page)
* License: [Apache v2](https://github.com/SixLabors/ImageSharp/blob/master/LICENSE)
* Description: Used by the Prism content pipeline to load and manipulate image data.