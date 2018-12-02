# GLFW

The version of GLFW being used currently is 3.2.1, compiled from the official 3.2.1 source release [on Github](https://github.com/glfw/glfw/releases/tag/3.2.1).

It is built using the provided CMake project, using the following generators (using default native compilers):

* Windows: `Visual Studio 15 2017 Win64`
* Linux: **not yet built**
* MacOS: **not yet built**

And the following settings (all are disabled (boolean), or default (strings), unless listed here):

* `BUILD_SHARED_LIBS`
* `USE_MSVC_RUNTIME_LIBRARY_DLL` (Windows Only)

The resulting shared library should be copied into this directory, renamed to `glfw3`, and given the correct extension for the target platform.