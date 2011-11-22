#!/bin/bash

PATH=$PATH:/opt/android-sdk-linux_x86/tools/

rm -f -r ~/apktool

# FRAMEWORK-RES.APK
echo
echo FRAMEWORK-RES.APK
echo
apktool b framework-res
rm framework-res/dist/framework-res.apk
cp stock-apks/framework-res.apk framework-res/dist/
#pushd framework-res/build/apk
#zip -u ../../dist/framework-res.apk res/drawable-hdpi/reboot.png
#zip -u ../../dist/framework-res.apk res/drawable-hdpi/recovery.png
#zip -u ../../dist/framework-res.apk resources.arsc
#popd
zipalign -f 4 framework-res/dist/framework-res.apk ./framework-res.apk
rm -f -r framework-res/build
rm -f -r framework-res/dist

apktool if ./framework-res.apk
apktool if ./stock-apks/twframework-res.apk


