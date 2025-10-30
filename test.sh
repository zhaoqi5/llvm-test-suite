#!/bin/bash

LLVM_PATH="$1"

if [[ -z "$LLVM_PATH" ]]; then
  echo "Usage: $0 <llvm_path>"
  exit 1
fi

rm -rf build
mkdir build && cd build

cmake \
  -DCMAKE_C_COMPILER=$LLVM_PATH/bin/clang \
  -DCMAKE_CXX_COMPILER=$LLVM_PATH/bin/clang++ \
  -C../cmake/caches/O3.cmake \
  ../ \
  -DCMAKE_C_FLAGS="-O3 -mlsx -fuse-ld=lld --save-temps" \
  -DCMAKE_CXX_FLAGS="-O3 -mlsx -fuse-ld=lld --save-temps"

make -j32 VERBOSE=1

# $LLVM_PATH/bin/llvm-lit -v -j 32 -o results.json .
