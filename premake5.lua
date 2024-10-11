project "spdlog"
    kind "StaticLib"
    language "C++"
    -- Must be compiled with C++11 (c.f. README.md)
    cppdialect "C++11"

    targetdir("bin/" .. outputDir .. "/%{prj.name}")
    objdir("bin-int/" .. outputDir .. "/%{prj.name}")

    files
    {
        "src/**.cpp",
        "include/**.h"
    }

    includedirs
    {
        "include"
    }

    defines "SPDLOG_COMPILED_LIB"