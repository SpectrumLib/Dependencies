@echo off

@rem This is the Windows build utility script for packing the LZ4 libraries together.
@rem This file is public domain.

set BaseFile=K4os.Compression.LZ4.Streams.dll
set DepFiles=K4os.Compression.LZ4.dll^
 K4os.Hash.xxHash.dll
set OutFile=../../Managed/LZ4.dll

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
