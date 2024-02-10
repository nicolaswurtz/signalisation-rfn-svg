#!/bin/sh
rsvg-convert -a -w 128 -h 128 -f svg "$1" -o "NEW/$1"
