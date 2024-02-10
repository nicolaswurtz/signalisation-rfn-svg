#!/bin/sh
rm png/ -fr

find svg/ -type f -name "*.svg"  -exec inkscape --without-gui {} -w 512 --export-type=png \;
cp -a svg png

find png/ -type f -name "*.svg"  -exec rm {} \;
find svg/ -type f -name "*.png"  -exec rm {} \;
