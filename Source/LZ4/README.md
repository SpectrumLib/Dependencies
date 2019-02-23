# LZ4 Compression

This dependency is a managed implementation of the LZ4 compression algorithm. It is a packed version of the following libraries:

* K4os.Compression.LZ4 (v1.1.1)
* K4os.Compression.LZ4.Streams (v1.1.1)
* K4os.Hash.xxHash (v1.0.5)

## Building

To update the libraries, perform the following steps:
1. Download the source for the library from Github.
2. Open the solution and change the target platform for the library from `Any CPU` to `x64`.
3. Build the library as normal (needs `paket` and `fake` at the time of writing).
4. Grab the netstandard2.0 Release build of the library, and paste it in this directory, overwriting the old one.
5. Run `build.bat` to update the packed library.