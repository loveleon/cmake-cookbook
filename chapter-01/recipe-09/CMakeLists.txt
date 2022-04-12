cmake_minimum_required(VERSION 3.5 FATAL_ERROR)
project(recipe-09 LANGUAGES CXX)

#windows库导出所有符号表
set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)

add_library(animal
        SHARED
        Animal.cpp
        Cat.cpp
        Dog.cpp
        Factory.hpp
        )

set_target_properties(
        animal
            PROPERTIES
                CXX_STANDARD 14
                CXX_EXTENSIONS OFF
                CXX_STANDARD_REQUIRED ON
                POSITION_INDEPENDENT_CODE 1
)

add_executable(animal-farm animal-farm.cpp)
set_target_properties(animal-farm
        PROPERTIES
            CXX_STANDARD 14
            CXX_EXTENSIONS OFF
            CXX_STANDARD_REQUIRED ON
        )
target_link_libraries(animal-farm animal)