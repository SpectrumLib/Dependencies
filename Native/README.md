# Native Libraries

Native libraries are built into the Spectrum.Native library for Windows and MacOS platforms. For Linux, the libraries must be installed through the package manager.

For each library, it will be specified if the library uses precompiled binaries, or was built from source. For libraries built from source, the source revision or tag will be noted, and the settings used to build the library will be given.

## [GLFW3](https://www.glfw.org)

* *Version*: 3.3 (Released on April 15, 2019)
* *Library Type*: x64 Precompiled (Windows and MacOS)

## [OpenAL Soft](https://kcat.strangesoft.net/openal.html)

* *Version*: 1.20.0 (Tagged on November 28, 2019)
* *Library Type*: x64 Source (Windows and MacOS)
    * Built from source with a reduced set of options to make the library small.

### Build Instructions

1. Download the source from the tagged release.
2. Launch the CMake GUI in the root folder of the source.
3. Configure for Visual Studio 2019 (Windows), or Unix Makefiles (OSX), with the "x64" platform.
4. From the default CMake configuration, make the following configuration changes:
    * Windows:
        * AMBDEC_PRESETS = OFF
        * BACKEND_DSOUND = OFF
        * BACKEND_WAVE = OFF
        * BACKEND_WINMM = OFF
        * CPUEXT_SSE4_1 = OFF
        * EMBED_HRTF_DATA = OFF
        * EXAMPLES = OFF
        * HRTF_DEFS = OFF
        * INSTALL = OFF
        * NO_CONFIG_UTIL = ON
        * REQUIRE_SSE = ON
        * REQUIRE_SSE2 = ON
        * REQUIRE_SSE3 = ON
        * REQUIRE_WASAPI = ON
        * TESTS = OFF
        * UTILS = OFF
        * BUILD_TYPE = Release
        * CONFIGURATION_TYPES = Release;MinSizeRel
5. Build the resulting project files with the Release/x64 configuration.