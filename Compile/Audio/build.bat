@echo off

@rem This is the Windows build utility script.
@rem This file is public domain.

"./../../_Premake/premake5.exe" --file=audio.lua vs2017
