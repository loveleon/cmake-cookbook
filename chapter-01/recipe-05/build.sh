#!/usr/bin/env bash
mkdir -p build
cd build
#cmake  -D USE_LIBRARY=ON -D MAKE_STATIC_LIBRARY=ON ..
cmake  -D USE_LIBRARY=OFF -D MAKE_STATIC_LIBRARY=ON ..

#make && ./recipe-03

#cmake --build .  is equal to 'make' command
cmake --build .
./recipe-05
echo "conditional compilation done."
#cd ../ && rm -rf  build