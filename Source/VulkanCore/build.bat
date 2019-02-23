@echo off

@rem This is the Windows build utility script for embedding the Unsafe library into the VulkanCore binary.
@rem This file is public domain.

set BaseFile=VulkanCore.dll
set DepFiles=../Managed/System.Runtime.CompilerServices.Unsafe.dll
set OutFile=../../Managed/VulkanCore.dll

for %%f in (%BaseFile% %DepFiles%) do (
    if not exist %%f (
        echo ERROR: Could not find input file %%f
        exit -1
    )
)

if exist %OutFile% (
    del %OutFile%
)

"..\..\Tools\ILRepack.exe" /target:library /internalize %BaseFile% %DepFiles% /out:%OutFile%
