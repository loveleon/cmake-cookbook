#!/usr/bin/env bash
mkdir -p build
cd build
cmake ..
#make && ./recipe-03
cmake --build . && ./recipe-03
echo "link static library done."
#cd ../ && rm -rf  build