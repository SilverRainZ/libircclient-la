#!/bin/sh

mkdir -p win32/lib
mkdir -p win32/include
mkdir -p win32/examples
cp libdynamic-release/*.lib win32/lib/
cp libdynamic-release/*.dll win32/lib/
cp libstatic-release/*.lib win32/lib/
cp ../../include/libircclient.h win32/include/
cp ../../include/libirc_errors.h	win32/include/
cp ../../include/libirc_events.h  win32/include/
cp ../../examples/* win32/examples/
cp spammer.dsp win32/examples/
cd win32
zip -r ../libircclient-win32-vc-0.6.zip .
cd ..
rm -rf win32

mkdir doc
cp ../../doc/html/* doc/
cd doc
zip -r ../libircclient-dochtml-0.6.zip .
cd ..
rm -rf doc