cmake_minimum_required(VERSION 3.5 FATAL_ERROR)
project("add_library" LANGUAGES CXX)

add_library(
        message
        STATIC
        message.hpp
        message.cpp
)

add_executable(recipe-03 hello_world.cpp)
target_link_libraries(recipe-03 message)