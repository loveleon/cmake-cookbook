#!/usr/bin/env bash
#TYPE=$1
#f [ $# != 1 ]; then
#  echo "TYPE:(Release|Debug|RelWithDebInfo|MinSizeRel)"
#  exit;
#fi

mkdir -p build
cd build
#cmake  -D CMAKE_BUILD_TYPE=${TYPE} ..
cmake ..

#cmake --build .  is equal to 'make' command
cmake --build . -- VERBOSE=1