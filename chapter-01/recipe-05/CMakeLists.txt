cmake_minimum_required(VERSION 3.5 FATAL_ERROR)
project(recipe-05 LANGUAGES CXX)

option(USE_LIBRARY "Compile the executable with link library" OFF)
message(STATUS "Compile the excutable with library : ${USE_LIBRARY}")

#set(_source hello-world.cpp message.hpp message.cpp)
list(APPEND _source message.hpp message.cpp hello-world.cpp)
message(STATUS "Source files : ${_source}")

include(CMakeDependentOption)

cmake_dependent_option(
        MAKE_STATIC_LIBRARY "Compile source into static library" ON
        "USE_LIBRARY" ON
)
cmake_dependent_option(
        MAKE_SHARED_LIBRARY "Compile source into shared library" OFF
        "USE_LIBRARY" ON
)

#导出符号表
set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)

if(USE_LIBRARY)
    if(MAKE_STATIC_LIBRARY)
        add_library(message STATIC message.hpp message.cpp)
        message(STATUS "Make static library :${MAKE_STATIC_LIBRARY}")
        add_executable(recipe-05 hello-world.cpp)
        target_link_libraries(recipe-05 message)
    endif()
    if(MAKE_SHARED_LIBRARY)
        add_library(message SHARED message.hpp message.cpp)
        message(STATUS "Make shared library :${MAKE_STATIC_LIBRARY}")
        add_executable(recipe-05 hello-world.cpp)
        target_link_libraries(recipe-05 message)
    endif()
else()
    add_executable(recipe-05 ${_source})
endif ()
