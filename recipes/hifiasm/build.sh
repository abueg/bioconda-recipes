#!/bin/bash

mkdir -p $PREFIX/bin

#make INCLUDES="-I$PREFIX/include" LDFLAGS="-L$PREFIX/lib -lz -lpthread -lm" CC=${CC} CXX=${CXX}
#make CXXFLAGS="-g -I$PREFIX/include -O3 -msse4.2 -mpopcnt -fomit-frame-pointer -Wall" LDFLAGS="-L$PREFIX/lib -lz -lpthread -lm" CC=${CC} CXX=${CXX}
export CXXFLAGS="-g -I$PREFIX/include -O3 -msse4.2 -mpopcnt -fomit-frame-pointer -Wall"
export LDFLAGS="-L$PREFIX/lib"

make CC=${CC} CXX=${CXX} ${CXXFLAGS} ${LDFLAGS} -lz -lpthread -lm
cp hifiasm $PREFIX/bin
