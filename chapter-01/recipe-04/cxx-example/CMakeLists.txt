cmake_minimum_required(VERSION 3.5 FATAL_ERROR)
project(recipe-04 LANGUAGES CXX)

#是否链接库
set(USE_LIBRARY OFF)
message(STATUS "BUILD EXECUTABLE BINARY WITH LIBRARY : ${USE_LIBRARY}")

#add_library 省略第二个参数，默认编译静态库
# BUILD_SHARED_LIBS 是一个cmake提供的全局标志，用于控制add_library行为
set(BUILD_SHARED_LIBS OFF)

list(APPEND _source hello-world.cpp message.hpp message.cpp)

if(USE_LIBRARY)
    #add_library 将会创建静态库，因为BUILD_SHARED_LIBS为OFF
    add_library(message message.hpp message.cpp)
    add_executable(recipe-04 hello-world.cpp)
    target_link_libraries(recipe-04 message)
else()
#    add_executable(recipe-04 hello-world.cpp message.hpp message.cpp)
    add_executable(recipe-04 ${_source})
endif()