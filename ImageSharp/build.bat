@echo off

@rem This is the Windows build utility script for combining SixLabors.ImageSharp and its dependencies.
@rem This file is public domain.

set BaseFile=SixLabors.ImageSharp.dll
set RenFile=SixLabors.ImageSharp.tmp.dll
set DepFiles=SixLabors.Core.dll^
 System.Buffers.dll^
 System.Memory.dll^
 System.Numerics.Vectors.dll^
 System.Runtime.CompilerServices.Unsafe.dll

for %%f in (%BaseFile% %InputFiles%) do (
    if not exist %%f (
        echo ERROR: Could not find %%f in this directory...
        exit -1
    )
)

ren %BaseFile% %RenFile%

"..\ILRepack.exe" /target:library /internalize %RenFile% %DepFiles% /out:%BaseFile%

del %RenFile%