cmake_minimum_required(VERSION 3.5 FATAL_ERROR)
project(recipe-10 LANGUAGES CXX)

add_library(
        geometry
        geometry_square.cpp
        geometry_rhombus.cpp
        geometry_polygon.cpp
        geometry_circle.cpp
        geometry_circle.hpp
        geometry_polygon.hpp
        geometry_rhombus.hpp
        geometry_square.hpp
)
target_compile_options(
        geometry
#        PROPERTIES #error
        PRIVATE
        -O3
)

list(APPEND _source_with_lower_optimization
        geometry_circle.cpp
        geometry_rhombus.cpp
        )
foreach(_source IN LISTS _source_with_lower_optimization)
    set_source_files_properties(_source PROPERTIES COMPILE_FLAGS -O2)
    message(STATUS "Append extra compile flags to : ${_source}")
endforeach()

foreach(_source ${_source_with_lower_optimization})
    get_source_file_property(VAR _source COMPILE_FLAGS)
    message(STATUS "Get ${_source} property : ${VAR}")
endforeach()

add_executable(compute-areas compute-areas.cpp)
target_link_libraries(compute-areas geometry)