# GLFW (3.0.0 prelease commit #f9923e)

Compiled from commit #f9923e [on Github](https://github.com/glfw/glfw/tree/f9923e).

It is built using CMake, with the following generators (using default native compilers):

* Windows: `Visual Studio 15 2017 Win64`
* Linux: **not yet built**
* MacOS: **not yet built**

And the following settings (all are disabled (boolean), or default (strings), unless listed here):

* `BUILD_SHARED_LIBS`
* `USE_MSVC_RUNTIME_LIBRARY_DLL` (Windows Only)

The library should be built in Release mode, then be copied into the root `Native/` directory and renamed to `glfw`, and given the correct extension for the target platform.