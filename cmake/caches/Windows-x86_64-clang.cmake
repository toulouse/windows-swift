
set(CMAKE_C_COMPILER clang-cl CACHE STRING "")
set(CMAKE_C_COMPILER_TARGET x86_64-unknown-windows-msvc CACHE STRING "")
set(CMAKE_CXX_COMPILER clang-cl CACHE STRING "")
set(CMAKE_CXX_COMPILER_TARGET x86_64-unknown-windows-msvc CACHE STRING "")

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} --target=x86_64-unknown-windows-msvc /GS- /Oy /Gw /Gy" CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --target=x86_64-unknown-windows-msvc /GS- /Oy /Gw /Gy" CACHE STRING "" FORCE)
set(CMAKE_EXE_LINKER_FLAGS "/INCREMENTAL:NO" CACHE STRING "" FORCE)
set(CMAKE_SHARED_LINKER_FLAGS "/INCREMENTAL:NO" CACHE STRING "" FORCE)

