
set(CMAKE_SWIFT_COMPILER_TARGET armv7-unknown-linux-androideabi CACHE STRING "")
set(CMAKE_SWIFT_FLAGS
      -resource-dir ${SWIFT_ANDROID_SDK}/usr/lib/swift
      -Xcc --sysroot=${CMAKE_ANDROID_NDK}/sysroot
    CACHE STRING "")
set(CMAKE_SWIFT_LINK_FLAGS
      -resource-dir ${SWIFT_ANDROID_SDK}/usr/lib/swift
      -tools-directory ${CMAKE_ANDROID_NDK}/toolchains/llvm/prebuilt/windows-x86_64/bin
      -Xclang-linker --gcc-toolchain=${CMAKE_ANDROID_NDK}/toolchains/arm-linux-androideabi-4.9/prebuilt/windows-x86_64
      -Xclang-linker --sysroot=${CMAKE_ANDROID_NDK}/platforms/android-${CMAKE_ANDROID_API}/arch-arm
      -Xclang-linker -fuse-ld=gold.exe
    CACHE STRING "")

if(CMAKE_VERSION VERSION_LESS 3.16)
  list(APPEND CMAKE_TRY_COMPILE_PLATFORM_VARIABLES CMAKE_Swift_COMPILER_TARGET)
endif()
set(CMAKE_Swift_COMPILER_TARGET armv7-unknown-linux-androideabi CACHE STRING "")
set(CMAKE_Swift_FLAGS "-resource-dir ${SWIFT_ANDROID_SDK}/usr/lib/swift -Xcc --sysroot=${CMAKE_ANDROID_NDK}/sysroot -Xclang-linker --gcc-toolchain=${CMAKE_ANDROID_NDK}/toolchains/arm-linux-androideabi-4.9/prebuilt/Windows-x86_64 -Xclang-linker -fuse-ld=lld -Xclang-linker --sysroot=${CMAKE_ANDROID_NDK}/platforms/android-${CMAKE_ANDROID_API}/arch-arm" CACHE STRING "")

