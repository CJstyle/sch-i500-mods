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

# FRAMEWORK.JAR
echo
echo FRAMEWORK.JAR
echo
apktool b framework.jar.out
rm framework.jar.out/dist/framework.jar
cp stock-apks/framework.jar framework.jar.out/dist/
pushd framework.jar.out/build/apk
zip -u ../../dist/framework.jar classes.dex
popd
zipalign -f 4 framework.jar.out/dist/framework.jar ./framework.jar
rm -f -r framework.jar.out/build
rm -f -r framework.jar.out/dist

# ANDROID.POLICY.JAR
echo
echo ANDROID.POLICY.JAR
echo
apktool b android.policy.jar.out
rm android.policy.jar.out/dist/android.policy.jar
cp stock-apks/android.policy.jar android.policy.jar.out/dist/
pushd android.policy.jar.out/build/apk
zip -u ../../dist/android.policy.jar classes.dex
popd
zipalign -f 4 android.policy.jar.out/dist/android.policy.jar ./android.policy.jar
rm -f -r android.policy.jar.out/build
rm -f -r android.policy.jar.out/dist

# BROWSER.APK
echo
echo BROWSER.APK
echo
apktool b Browser
rm Browser/dist/Browser.apk
cp stock-apks/Browser.apk Browser/dist/
pushd Browser/build/apk
zip -u ../../dist/Browser.apk resources.arsc
popd
zipalign -f 4 Browser/dist/Browser.apk ./Browser.apk
rm -f -r Browser/build
rm -f -r Browser/dist

# CAMERA.APK
echo
echo CAMERA.APK
echo
apktool b Camera
rm Camera/dist/Camera.apk
cp stock-apks/Camera.apk Camera/dist/
pushd Camera/build/apk
zip -u ../../dist/Camera.apk classes.dex
zip -u ../../dist/Camera.apk resources.arsc
popd
zipalign -f 4 Camera/dist/Camera.apk ./Camera.apk
rm -f -r Camera/build
rm -f -r Camera/dist

# JOBMANAGER.APK
echo
echo JOBMANAGER.APK
echo
apktool b JobManager
rm JobManager/dist/JobManager.apk
cp stock-apks/JobManager.apk JobManager/dist/
pushd JobManager/build/apk
zip -u ../../dist/JobManager.apk classes.dex
popd
zipalign -f 4 JobManager/dist/JobManager.apk ./JobManager.apk
rm -f -r JobManager/build
rm -f -r JobManager/dist

# MMS.APK
echo
echo MMS.APK
echo
apktool b Mms
rm Mms/dist/Mms.apk
cp stock-apks/Mms.apk Mms/dist/
pushd Mms/build/apk
zip -u ../../dist/Mms.apk classes.dex
zip -u ../../dist/Mms.apk res/xml/mms_config.xml
zip -u ../../dist/Mms.apk res/xml/preferences.xml
popd
zipalign -f 4 Mms/dist/Mms.apk ./Mms.apk
rm -f -r Mms/build
rm -f -r Mms/dist

# MUSICPLAYER.APK
echo
echo MUSICPLAYER.APK
echo
apktool b MusicPlayer
rm MusicPlayer/dist/MusicPlayer.apk
cp stock-apks/MusicPlayer.apk MusicPlayer/dist/
pushd MusicPlayer/build/apk
zip -u ../../dist/MusicPlayer.apk resources.arsc
popd
zipalign -f 4 MusicPlayer/dist/MusicPlayer.apk ./MusicPlayer.apk
rm -f -r MusicPlayer/build
rm -f -r MusicPlayer/dist

# SETTINGS.APK
echo
echo SETTINGS.APK
echo
apktool b Settings
rm Settings/dist/Settings.apk
cp stock-apks/Settings.apk Settings/dist/
pushd Settings/build/apk
zip -u ../../dist/Settings.apk classes.dex
zip -u ../../dist/Settings.apk res/xml/display_settings.xml
popd
zipalign -f 4 Settings/dist/Settings.apk ./Settings.apk
rm -f -r Settings/build
rm -f -r Settings/dist

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

# TOUCHWIZ30LAUNCHER.APK
echo
echo TOUCHWIZ30LAUNCHER.APK
echo
apktool b TouchWiz30Launcher
rm TouchWiz30Launcher/dist/TouchWiz30Launcher.apk
cp stock-apks/TouchWiz30Launcher.apk TouchWiz30Launcher/dist/
pushd TouchWiz30Launcher/build/apk
zip -u ../../dist/TouchWiz30Launcher.apk res/xml/default_workspace.xml
popd
zipalign -f 4 TouchWiz30Launcher/dist/TouchWiz30Launcher.apk ./TouchWiz30Launcher.apk
rm -f -r TouchWiz30Launcher/build
rm -f -r TouchWiz30Launcher/dist


