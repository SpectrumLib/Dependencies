# OpenAL Soft (1.19.1)

It is built using CMake, with the following generators (using default native compilers):

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

The library should be built in Release mode, then be copied into the root `Native/` directory and renamed to `oal`, and given the correct extension for the target platform.