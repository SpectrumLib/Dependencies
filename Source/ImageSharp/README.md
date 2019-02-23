# ImageSharp

This dependency is a managed implementation of standard image file format encoders and decoders. It is a packed version of the following libraries:

* SixLabors.Core (v1.0.0-beta7)
* SixLabors.ImageSharp (v1.0.0-beta0006)

## Building

To update this library, perform the following steps:

1. Download the ImageSharp and SixLabors.Core sources
2. Retarget to x64
3. Build release for netstandard 2.0.
4. Put the new files into this directory and re-run the build.bat script.