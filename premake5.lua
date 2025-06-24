workspace "D3D12MemoryAllocator"
   startproject "D3D12MemoryAllocator"
   configurations { "Debug", "Release" }
   platforms      { "x86", "x64" }

filter "platforms:x86"
   architecture "x86"
filter "platforms:x64"
   architecture "x86_64"

   language    "C++"
   cppdialect  "C++17"
   staticruntime "On"
   systemversion "latest"
   targetdir   "bin/%{cfg.buildcfg}_%{cfg.platform}"
   objdir      "bin-int/%{cfg.buildcfg}_%{cfg.platform}"

filter "configurations:Debug"
   runtime "Debug"
   symbols "On"
filter "configurations:Release"
   runtime "Release"
   optimize "On"

filter {}


project "D3D12MemoryAllocator"
   kind "None"

   files { "D3D12MemAlloc.h" }
   includedirs { "." }
