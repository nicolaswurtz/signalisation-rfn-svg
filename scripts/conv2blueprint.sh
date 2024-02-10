#!/bin/sh
sed s/"rgb(0%,0%,0%)"/#E4EAF6/g -i *.svg
sed s/"rgb(100%,100%,100%)"/#405CB1/g -i *.svg
sed s/#000000/#E4EAF6/g -i *.svg
sed s/#ffffff/#405CB1/g -i *.svg 
