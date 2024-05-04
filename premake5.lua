project "spdlog"
    kind "StaticLib"

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