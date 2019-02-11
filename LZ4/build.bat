@echo off

@rem This is the Windows build utility script for packing the LZ4 libraries together.
@rem This file is public domain.

if not exist .\K4os.Compression.LZ4.dll (
    echo "ERROR: Could not find K4os.Compression.LZ4.dll in this directory..."
    exit -1
)
if not exist .\K4os.Compression.LZ4.Streams.dll (
    echo "ERROR: Could not find K4os.Compression.LZ4.Streams.dll in this directory..."
    exit -1
)
if not exist .\K4os.Hash.xxHash.dll (
    echo "ERROR: Could not find K4os.Hash.xxHash.dll in this directory..."
    exit -1
)

if exist .\LZ4.dll (
    del .\LZ4.dll
)

"..\ILRepack.exe" /target:library K4os.Compression.LZ4.Streams.dll K4os.Compression.LZ4.dll K4os.Hash.xxHash.dll /out:LZ4.dll

echo "Repack complete. Press ENTER to continue..."
pause
