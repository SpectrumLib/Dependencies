# Source

This folder contains the various source projects that represent the unbuilt dependencies. They are divided up into specific folders.

There is one special folder, `Managed`, which contains some Microsoft libraries that are required by multiple managed dependencies. These are usually the netstandard2.0 Release builds of these libraries downloaded from Nuget.

For all of the sources, there will be a readme file explaining the dependency and how to update/build it.

The source projects are:

* `GLFW` - Windowing and input control system.
* `ImageSharp` - Fully-managed implementation of encoders and decoders for common image file formats.
* `LZ4` - Fully-managed implementation of block and streaming compression/decompression using the LZ4 algorithm.
* `OALSoft` - The software implemention of the OpenAL audio library standard.
* `VulkanCore` - The VulkanCore managed library, which provides runtime binding to the Vulkan dyanmic library installed on the host.