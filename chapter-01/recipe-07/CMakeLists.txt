cmake_minimum_required(VERSION 3.5 FATAL_ERROR)
project(recipe-07 LANGUAGES C CXX)

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release CACHE STRING "Build type" FORCE)
ENDIF()
message(STATUS "Build type : ${CMAKE_BUILD_TYPE}")

message(STATUS "C flags, Debug configuration: ${CMAKE_C_FLAGS_DEBUG}")
message(STATUS "C flags, RelWithDeb configuration: ${CMAKE_C_FLAGS_RELWITHDEBINFO}")
message(STATUS "C flags, Release configuration: ${CMAKE_C_FLAGS_RELEASE}")
message(STATUS "C flags, Minimum Release configuration: ${CMAKE_C_FLAGS_MINSIZEREL}")

message(STATUS "C++ flags, Debug configuration: ${CMAKE_CXX_FLAGS_DEBUG}")
message(STATUS "C++ flags, RelWithDeb configuration: ${CMAKE_CXX_FLAGS_RELWITHDEBINFO}")
message(STATUS "C++ flags, Release configuration: ${CMAKE_CXX_FLAGS_RELEASE}")
message(STATUS "C++ flags, Minimum Release configuration: ${CMAKE_CXX_FLAGS_MINSIZEREL}")