#最小cmake版本号，否则报错
cmake_minimum_required(VERSION 3.2 FATAL_ERROR)

#声明项目的名称
project(recipe-01-1 LANGUAGES CXX)

#指示cmake创建一个目标
add_executable(hello-world-1 hello-world.cpp)
