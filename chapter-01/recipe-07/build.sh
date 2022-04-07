#!/usr/bin/env bash
TYPE=$1
if [ $# != 1 ]; then
  echo "TYPE:(Release|Debug|RelWithDebInfo|MinSizeRel)"
  exit;
fi

mkdir -p build
cd build
cmake  -D CMAKE_BUILD_TYPE=${TYPE} ..

#cmake --build .  is equal to 'make' command
cmake --build .