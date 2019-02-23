-- This is the Premake build script for the image-loading native library for the Spectrum Project.
-- This file is public domain.

-- Function for getting windows sdk version
-- Taken from https://github.com/premake/premake-core/issues/651
function getWinSDKVersion()
	if os.getversion().majorversion == 10 then
		local reg_arch = iif(os.is64bit(), "\\Wow6432Node\\", "\\")
		local sdk_version = 
			os.getWindowsRegistry("HKLM:SOFTWARE" .. reg_arch .. "Microsoft\\Microsoft SDKs\\Windows\\v10.0\\ProductVersion")
		if sdk_version ~= nil then return sdk_version .. ".0" else return nil end
	else
		return nil
	end
end
local win_sys_ver = os.ishost("windows") and getWinSDKVersion() or nil

workspace "ImageLoader"
    language "C"
    location "build"
    configurations { "Release" }
    platforms { "x64" }

    targetdir "build/bin"
    runtime "Release"
    symbols "Off"
    architecture "x86_64"
    optimize "Speed"

    filter { "system:windows" }
        if win_sys_ver ~= nil then
            systemversion (win_sys_ver)
        end
        linkoptions { "/def:../exports.def" }
    filter {}

project "ImageLoader"
    kind "SharedLib"
    targetname "image"
    files { "*.h", "*.c" }
