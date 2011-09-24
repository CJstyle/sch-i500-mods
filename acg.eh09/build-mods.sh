#!/bin/bash

PATH=$PATH:/opt/android-sdk-linux_x86/tools/

rm -f -r ~/apktool

# FRAMEWORK-RES
# TODO: change this first, then "apktool if" it

apktool if ./stock-apks/framework-res.apk
apktool if ./stock-apks/twframework-res.apk

# SERVICES.JAR
apktool b services.jar.out
rm services.jar.out/dist/services.jar
cp stock-apks/services.jar services.jar.out/dist/
pushd services.jar.out/build/apk
zip -u ../../dist/services.jar classes.dex
popd
zipalign -f 4 services.jar.out/dist/services.jar ./services.jar
rm -f -r services.jar.out/build
rm -f -r services.jar.out/dist

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

# SEC_FEATURE.JAR
apktool b sec_feature.jar.out
rm sec_feature.jar.out/dist/sec_feature.jar
cp stock-apks/sec_feature.jar sec_feature.jar.out/dist/
pushd sec_feature.jar.out/build/apk
zip -u ../../dist/sec_feature.jar classes.dex
popd
zipalign -f 4 sec_feature.jar.out/dist/sec_feature.jar ./sec_feature.jar
rm -f -r sec_feature.jar.out/build
rm -f -r sec_feature.jar.out/dist

# BROWSER
apktool b Browser
rm Browser/dist/Browser.apk
cp stock-apks/Browser.apk Browser/dist/
pushd Browser/build/apk
zip -u ../../dist/Browser.apk resources.arsc
popd
zipalign -f 4 Browser/dist/Browser.apk ./Browser.apk
rm -f -r Browser/build
rm -f -r Browser/dist


