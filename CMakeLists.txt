cmake_minimum_required(VERSION 3.21)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_VISIBILITY_PRESET hidden)

if(${GEODE_TARGET_PLATFORM} STREQUAL "iOS" OR IOS)
  message(STATUS "building for ios :3")
  unset(CMAKE_OSX_ARCHITECTURES)
  set(CMAKE_OSX_ARCHITECTURES arm64)
  set(CMAKE_OSX_DEPLOYMENT_TARGET "14.0")
  set(CMAKE_SYSTEM_NAME "iOS")
else()
  message(STATUS "meow meow mrrp mrrp mrow :333")
  set(CMAKE_OSX_ARCHITECTURES "arm64;x86_64")
endif()

project(Template VERSION 1.0.0)

# Set up the mod binary
add_library(${PROJECT_NAME} SHARED
    src/iGeodeLib.mm
    src/test.cpp
    src/iGeodeLib.hpp
)

if (NOT DEFINED ENV{GEODE_SDK})
    message(FATAL_ERROR "Unable to find Geode SDK! Please define GEODE_SDK environment variable to point to Geode")
else()
    message(STATUS "Found Geode: $ENV{GEODE_SDK}")
endif()

add_subdirectory($ENV{GEODE_SDK} ${CMAKE_CURRENT_BINARY_DIR}/geode)

# Set up dependencies, resources, and link Geode.
setup_geode_mod(${PROJECT_NAME})