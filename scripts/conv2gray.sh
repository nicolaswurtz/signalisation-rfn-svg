#!/bin/sh
sed s/"rgb(0%,0%,0%)"/#333333/g -i *.svg
sed s/"rgb(100%,100%,100%)"/#f2f2f2/g -i *.svg
sed s/#000000/#333333/g -i *.svg
sed s/#ffffff/#f2f2f2/g -i *.svg 
