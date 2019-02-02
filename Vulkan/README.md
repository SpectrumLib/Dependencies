# VulkanCore

This is a slightly modified version of the one found on Github, with two major changes:

1. Retargeted to .NET Standard 2.0, which removes the System.ValueTuple Nuget dependency.
2. Uses ILRepack to embedd System.Runtime.CompilerServices.Unsafe, which removes the Nuget dependency, making the binary self-standing.

Files in this directory:
* `VulkanCore.dll` - The compiled library, used as the direct reference in Spectrum.
* `System.Runtime.CompilerServices.Unsafe.dll` - The .NET Standard 2.0 v4.5.2 build from NuGet, which is embedded in the VulkanCore binary

There is a slight chance that we could drop the requirement for the Unsafe class altogether, as there are almost no references to it in the VulkanCore library itself.

## Building

To update these bindings, first download the latest source code from [Github](https://github.com/discosultan/VulkanCore), then:

1. Retarget the library to .NET Standard 2.0
2. Remove the nuget reference to System.ValueTuple
3. Retarget the library to build as 64-bit
4. Build the library in release mode
5. Find the compiled .dll
6. Delete the existing VulkanCore.dll library in this directory
7. Copy the fresh-built VulkanCore.dll into this directory
8. Run the `build` script
