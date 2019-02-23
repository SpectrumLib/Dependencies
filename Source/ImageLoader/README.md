# ImageLoader

This contains the header file, implementation file, and build script for the `stb_image` library. This is used to load images in the Prism pipeline project, and supports a variety of image types.

Contains the following libraries:

* stb_image (v2.2.0)
* stb_image_resize (v0.95)

## Building

1. Get the updated version of stb_image.h or stb_image_resize.h from Github.
2. Place the new files into this directory.
3. Run the build script for your platform.
4. Open/Run the solution/Makefile and build the library
5. Copy the library from the `build/bin/` folder and place it into the root `Native/` folder.
6. Give the library the correct extension for the platform.
