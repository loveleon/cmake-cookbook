cmake_minimum_required(VERSION 3.5 FATAL_ERROR)
project(recipe-03-2 LANGUAGES CXX)

#generate an object library from source
add_library(
        message-objs
        OBJECT
        message.hpp
        message.cpp
)
## this is only needed for older compilers
## but doesn't hurt either to have it
set_target_properties(message-objs
#        properties   -- 小写报错
        PROPERTIES
#        position_independent_code 1
        POSITION_INDEPENDENT_CODE 1
)


#shared library
add_library(message-shared
        SHARED
#        $<target_objects:message-objs>
        $<TARGET_OBJECTS:message-objs>
        )
set_target_properties(message-shared
#        properties
        PROPERTIES
#        output_name "message"     #小写没有报错，提倡大写有colorful 区别提示
        OUTPUT_NAME "message"
        )

#static library
add_library(message-static
        STATIC
        $<TARGET_OBJECTS:message-objs>)
set_target_properties(message-static
        PROPERTIES
        OUTPUT_NAME "message")


add_executable(recipe-03-2 hello-world.cpp)
target_link_libraries(recipe-03-2 message-static)
#TARGET_LINK_LIBRARIES(recipe-03-2 message-shared)