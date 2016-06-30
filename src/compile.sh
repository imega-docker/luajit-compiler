#!/bin/sh

luajit -b main.lua main.o
gcc -O2 -Wall -Wl,-E -o app app.c main.o -Ixx -Lxx -lluajit-5.1 -lm -ldl
