project "GLM"
	kind "StaticLib"
	language "C"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"glm/*.cpp",
		"glm/*.hpp",
		"glm/detail/*.cpp",
		"glm/detail/*.hpp",
		"glm/ext/*.cpp",
		"glm/ext/*.hpp",
		"glm/gtc/*.hpp",
		"glm/gtc/*.cpp",
		"glm/gtx/*.hpp",
		"glm/gtx/*.cpp",
		"glm/simd/*.hpp",
		"glm/simd/*.cpp",
	}

	includedirs
	{
		"glm/"
	}

	systemversion "latest"
	staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"