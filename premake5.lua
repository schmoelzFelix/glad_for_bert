project "glad"
    kind "StaticLib"
    language "C"

    targetdir ("../../bin/" .. outputdir .. "/%{prj.name}")
    objdir ("../../bin-obj/" .. outputdir .. "/%{prj.name}")

    files
    {
        "include/glad/**.h",
        "include/KHR/**.h",
        "src/**.c"
    }

    includedirs
    {
        "include"
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "On"

    filter {}