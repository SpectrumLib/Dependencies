# Spectrum Dependencies

Native and managed library dependencies for [Spectrum](https://github.com/SpectrumLib/Spectrum). 

Some are provided precompiled, others have compilation projects included.

All libraries are simply rehosted, and carry their original licenses and links to their original project and/or author pages.

## Native Library Naming

The native libraries are named in such a way that they can be easily grouped, but differentiated by the operating system they were build for. The same library will have the same base name for all target systems, but will have the following extensions:

* `w` - Windows
* `m` - MacOS

Linux libraries must be installed on the system, and are not packaged into the library.

The consistent name and different extensions are required by the Spectrum and Prism runtimes to work properly. They are used as Embedded Resources within the libraries, and the correct library for the current platform is selected, extracted to a version-specific temp folder, and loaded at runtime.

# Managed Libraries

### [SharpVk](https://github.com/FacticiusVir/SharpVk)

* License: [MIT](https://github.com/FacticiusVir/SharpVk/blob/master/LICENSE)
* Description: C# Bindings to the Vulkan API.

# Native Libraries

### [GLFW3](https://www.glfw.org/)

* License: [zlib/libpng](https://github.com/glfw/glfw/blob/master/LICENSE.md)
* Description: Library used for windowing and input.

### [OpenAL Soft](https://kcat.strangesoft.net/openal.html)

* License: [LGPLv2](https://github.com/kcat/openal-soft/blob/master/COPYING)
* Description: Software implementation of the OpenAL API, used for audio playback.