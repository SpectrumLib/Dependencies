# GLFW

The version of GLFW being used currently is 3.2.1, compiled from the official 3.2.1 source release [on Github](https://github.com/glfw/glfw/releases/tag/3.2.1).

It is built using the provided CMake project, using the following generators (default native compilers):

* Windows: `Visual Studio 15 2017 Win64`
* Linux: **not yet built**
* MacOS: **not yet built**

And the following settings (all are disabled unless listed here):

* `BUILD_SHARED_LIBS`
* `USE_MSVC_RUNTIME_LIBRARY_DLL` (Windows Only)

The resulting static library should be copied into this directory, and given the correct extesion for the target platform.