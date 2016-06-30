#!/usr/bin/env bash

mkdir -p $ROOTFS/app

cp $SRC/compile.sh $ROOTFS/app/compile.sh
chmod +x $ROOTFS/app/compile.sh
cd $ROOTFS/usr/lib/
ln -s libluajit-5.1.so.2.0.4 libluajit-5.1.so
