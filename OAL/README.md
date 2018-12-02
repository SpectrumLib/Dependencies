# OpenAL Soft

The version of OpenAL Soft being used currently is 1.19.1, compiled from the official 1.19.1 source release [on Github](https://github.com/kcat/openal-soft/releases/tag/openal-soft-1.19.1).

It is built using the provided CMake project, using the following generators (using default native compilers):

* Windows: `Visual Studio 15 2017 Win64`
* Linux: **not yet built**
* MacOS: **not yet built**

And the following settings (all are disabled (boolean), or default (strings), unless listed here):

* `ALSOFT_BACKEND_WASAPI` (Windows Only)
* `ALSOFT_CPUEXT_SSE`
* `ALSOFT_CPUEXT_SSE2`
* `ALSOFT_REQUIRE_SSE`
* `ALSOFT_REQUIRE_SSE2`
* `ALSOFT_REQUIRE_WASASI` (Windows Only)
* `CMAKE_BUILD_TYPE` = "Release"

The resulting shared library should be copied into this directory, renamed to `oal`, and given the correct extension for the target platform.