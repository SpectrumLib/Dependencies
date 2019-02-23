@echo off

@rem This is the Windows build utility script.
@rem This file is public domain.

"../../Tools/premake5.exe" --file=premake5.lua vs2017
