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
pushd framework-res/build/apk
zip -u ../../dist/framework-res.apk res/drawable-hdpi/reboot.png
zip -u ../../dist/framework-res.apk res/drawable-hdpi/recovery.png
zip -u ../../dist/framework-res.apk res/drawable-hdpi/overscroll_*
zip -u ../../dist/framework-res.apk res/drawable-hdpi/stat_sys_battery_*
zip -u ../../dist/framework-res.apk resources.arsc
popd
zipalign -f 4 framework-res/dist/framework-res.apk ./framework-res.apk
rm -f -r framework-res/build
rm -f -r framework-res/dist

apktool if ./framework-res.apk
apktool if ./stock-apks/twframework-res.apk

# SERVICES.JAR
echo
echo SERVICES.JAR
echo
apktool b services.jar.out
rm services.jar.out/dist/services.jar
cp stock-apks/services.jar services.jar.out/dist/
pushd services.jar.out/build/apk
zip -u ../../dist/services.jar classes.dex
popd
zipalign -f 4 services.jar.out/dist/services.jar ./services.jar
rm -f -r services.jar.out/build
rm -f -r services.jar.out/dist

# BROWSER.APK
echo
echo BROWSER.APK
echo
apktool b Browser
rm Browser/dist/Browser.apk
cp stock-apks/Browser.apk Browser/dist/
pushd Browser/build/apk
zip -u ../../dist/Browser.apk classes.dex
zip -u ../../dist/Browser.apk resources.arsc
zip -u ../../dist/Browser.apk res/xml/browser_preferences.xml
popd
zipalign -f 4 Browser/dist/Browser.apk ./Browser.apk
rm -f -r Browser/build
rm -f -r Browser/dist

# DESKCRADLE.APK
echo
echo DESKCRADLE.APK
echo
apktool b DeskCradle
rm DeskCradle/dist/DeskCradle.apk
cp stock-apks/DeskCradle.apk DeskCradle/dist/
pushd DeskCradle/build/apk
zip -u ../../dist/DeskCradle.apk classes.dex
popd
zipalign -f 4 DeskCradle/dist/DeskCradle.apk ./DeskCradle.apk
rm -f -r DeskCradle/build
rm -f -r DeskCradle/dist

# MUSICPLAYER.APK
echo
echo MUSICPLAYER.APK
echo
apktool b MusicPlayer
rm MusicPlayer/dist/MusicPlayer.apk
cp stock-apks/MusicPlayer.apk MusicPlayer/dist/
pushd MusicPlayer/build/apk
zip -u ../../dist/MusicPlayer.apk classes.dex
zip -u ../../dist/MusicPlayer.apk resources.arsc
popd
zipalign -f 4 MusicPlayer/dist/MusicPlayer.apk ./MusicPlayer.apk
rm -f -r MusicPlayer/build
rm -f -r MusicPlayer/dist

# SYSTEMUI.APK
echo
echo SYSTEMUI.APK
echo
apktool b SystemUI
rm SystemUI/dist/SystemUI.apk
cp stock-apks/SystemUI.apk SystemUI/dist/
pushd SystemUI/build/apk
zip -u ../../dist/SystemUI.apk classes.dex
popd
zipalign -f 4 SystemUI/dist/SystemUI.apk ./SystemUI.apk
rm -f -r SystemUI/build
rm -f -r SystemUI/dist


