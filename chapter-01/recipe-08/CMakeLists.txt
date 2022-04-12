cmake_minimum_required(VERSION 3.5 FATAL_ERROR)
project(recipe-08 LANGUAGES CXX)

#set(flags ${CMAKE_CXX_FLAGS})
#message("C++ compiler flags: ${flags}")

message("C++ compiler flags: ${CMAKE_CXX_FLAGS}")
list(APPEND flags ${CMAKE_CXX_FLAGS})
LIST(APPEND flags "-fPIC" "-Wall")

if(NOT WIN32)
    list(APPEND flags "-Wextra" "-Wpedantic")
endif()

add_library(geometry
        STATIC
        geometry_circle.cpp
        geometry_polygon.cpp
        geometry_rhombus.cpp
        geometry_square.cpp)
target_compile_options(
        geometry
        PRIVATE
            ${flags}
)

add_executable(compute-areas compute-areas.cpp)
target_compile_options(compute-areas
        PRIVATE
            "-fPIC"
        )
target_link_libraries(compute-areas geometry)