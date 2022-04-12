#!/usr/bin/env bash

mkdir -p build
cd build
cmake ..

#cmake --build .  is equal to 'make' command
#cmake --build . -- VERBOSE=1
cmake --build .