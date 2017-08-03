dofile "premake_config.lua"

-- The solution for building the main app project
solution "Game_v001"
	location(_ACTION)
	configurations 
	{ 
		"Debug", 
		"Release"
	}
	
	defines { "_SCL_SECURE_NO_WARNINGS", "_CRT_SECURE_NO_WARNINGS" }	
	startproject "Game"
	
	local externalsPath = "../externals/"
	dofile(externalsPath .. "redCort/project/projectPremake5.lua")
	
-- Project settings
project "Game"
	targetname "Game_v001"
	kind "ConsoleApp"
	language "C++"
	
	debugdir "../product/build"
	
	includedirs
	{
		SOURCE_FOLDER .. "game"
	}
	
	files 
	{ 
		SOURCE_FOLDER .. "**"
	}
	
	configuration "Debug"
		targetdir("../product/debug")
		defines { "G_DEBUG" }
		flags { "Symbols" }
		
	configuration "Release"
		targetdir("../product/release")
		defines { "G_RELEASE" }
		flags { "Optimize" }
		
	
	
	