# ImageSharp

This folder contains the managed library SixLabors.ImageSharp and its dependencies, and uses ILRepack to put all of them
into a single assembly.

To update this library, download the ImageSharp and SixLabors.Core sources, retarget to x64, and build release for netstandard 2.0.
Then put the new files into this directory and re-run the build.bat script.