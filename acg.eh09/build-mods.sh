#!/bin/bash

PATH=$PATH:/opt/android-sdk-linux_x86/tools/

rm -f -r ~/apktool

# FRAMEWORK-RES
# TODO: change this first, then "apktool if" it

apktool if ./stock-apks/framework-res.apk
apktool if ./stock-apks/twframework-res.apk

# FRAMEWORK.JAR
apktool b framework.jar.out
rm framework.jar.out/dist/framework.jar
cp stock-apks/framework.jar framework.jar.out/dist/
pushd framework.jar.out/build/apk
zip -u ../../dist/framework.jar classes.dex
popd
zipalign -f 4 framework.jar.out/dist/framework.jar ./framework.jar
rm -f -r framework.jar.out/build
rm -f -r framework.jar.out/dist

