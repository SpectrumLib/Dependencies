# Managed Libraries

Spectrum hosts its own managed libraries, instead of relying on Nuget packages and references. This gives better control over which libraries are referenced, and is required for the libraries that we change and build ourselves.

This document gives specific information, and build instructions where required, for the managed libraries in use by Spectrum.

## SharpVk

SharpVk is available in source as a .Net Standard 2.0 library. The following changes were made before building the library:

1. Removed all projects from the solution, except for SharpVk.
2. Retargeted SharpVk to .Net Standard 2.1, and platform x64.
3. Removed nuget package references.
4. Changed all `Unsafe.SizeOf` references to `Marshal.SizeOf`.
5. Built the Release version for use as the official library reference.

The current SharpVK version is from master branch commit `ae5216d`.