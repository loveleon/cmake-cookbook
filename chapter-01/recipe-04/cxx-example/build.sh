#!/usr/bin/env bash
mkdir -p build
cd build
cmake ..

#make && ./recipe-03

#cmake --build .  is equal to 'make' command
cmake --build .
./recipe-04
echo "conditional compilation done."
#cd ../ && rm -rf  build