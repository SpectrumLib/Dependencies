# VulkanCore (v1.0.0-alpha40)

Runtime binding to the installed Vulkan dynamic library on the host system.

*Note: There is a slight chance that we could drop the requirement for the Unsafe class altogether, as there are almost no references to it in the VulkanCore library itself.*

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
