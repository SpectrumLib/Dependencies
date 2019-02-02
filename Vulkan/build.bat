@echo off

@rem This is the Windows build utility script for embedding the Unsafe library into the VulkanCore binary.
@rem This file is public domain.

if not exist .\VulkanCore.dll (
    echo "ERROR: Could not find VulkanCore.dll in this directory..."
    exit -1
)
if not exist .\System.Runtime.CompilerServices.Unsafe.dll (
    echo "ERROR: Could not find System.Runtime.CompilerServices.Unsafe.dll in this directory..."
    exit -1
)

ren .\VulkanCore.dll VulkanCore.tmp.dll

"..\ILRepack.exe" /target:library /internalize VulkanCore.tmp.dll System.Runtime.CompilerServices.Unsafe.dll /out:VulkanCore.dll

del .\VulkanCore.tmp.dll
