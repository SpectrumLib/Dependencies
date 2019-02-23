@echo off

@rem This is the Windows build utility script for combining SixLabors.ImageSharp and its dependencies.
@rem This file is public domain.

set BaseFile=SixLabors.ImageSharp.dll
set DepFiles=SixLabors.Core.dll^
 ../Managed/System.Buffers.dll^
 ../Managed/System.Memory.dll^
 ../Managed/System.Numerics.Vectors.dll^
 ../Managed/System.Runtime.CompilerServices.Unsafe.dll
set OutFile=../../Managed/ImageSharp.dll

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
