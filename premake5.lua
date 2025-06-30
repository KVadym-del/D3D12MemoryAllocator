project "D3D12MemoryAllocator"
   kind "StaticLib"
   language "C++"
   cppdialect "C++17"

   targetdir ("bin/" .. outputdir .. "/%{prj.name}")
   objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

   includedirs { "%{prj.location}/include" }

   files {
      "%{prj.location}/include/D3D12MemAlloc.h",
      "%{prj.location}/src/D3D12MemAlloc.cpp"
   }