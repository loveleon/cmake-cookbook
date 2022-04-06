#!/usr/bin/env bash
mkdir -p build
cmake -H. -Bbuild
cd build && make && ./hello-world-1
#cd .. && rm -rf build