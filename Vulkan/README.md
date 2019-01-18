# VulkanCore

This is a slightly modified version of the one found on Github, with two major changes:

1. Retargeted to .NET Standard 2.0, which removes the System.ValueTuple Nuget dependency.
2. Embedded the CIL instructions of the `Unsafe` class directly into the library, which removes the System.Runtime.CompilerServices.Unsafe Nuget dependency.

Files in this directory:
* `VulkanCore.dll` - The compiled library, used as the direct reference in Spectrum.
* `Unsafe.il` - The decompiled CIL for the .Net Platform Extensions `Unsafe` class, which is implemented in CIL instead of C#.
* `VulkanCore.il` - The raw CIL code from a decompiled VulkanCore library, with calls to Unsafe replaced with the CIL taken from `Unsafe.il`

There is a slight chance that we could drop the requirement for the Unsafe class altogether, as there are almost no references to it in the VulkanCore library itself.

## Building

To update these bindings, first download the latest source code from [Github](https://github.com/discosultan/VulkanCore), then:

1. Retarget the library to .NET Standard 2.0
2. Remove the nuget reference to System.ValueTuple
3. Retarget the library to build as 64-bit
4. Build the library in release mode
5. Find the compiled .dll
6. Decompile the dll using `ildasm` or one of the IL decompilers like ILSpy into `VulkanCore.il`
7. Copy the code in Unsafe.il to the end of the decompiled library
8. In the new .il file, and add `[netstandard]` in front of each `System.Runtime.Versioning.NonVersionableAttribute::.ctor()` instance
9. Replace every call to `Unsafe` with `_Unsafe`.
10. Compile using `ilasm VulkanCore.il /dll /x64 /nologo /noautoinherit /output:VulkanCore.dll /optimize`