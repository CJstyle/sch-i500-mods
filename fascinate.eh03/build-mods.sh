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
zip -u ../../dist/framework-res.apk res/drawable-hdpi/stat_sys_battery_*
zip -u ../../dist/framework-res.apk resources.arsc
popd
zipalign -f 4 framework-res/dist/framework-res.apk ./framework-res.apk
rm -f -r framework-res/build
rm -f -r framework-res/dist

apktool if ./framework-res.apk
apktool if ./stock-apks/twframework-res.apk

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

# AXT9IME.APK
echo
echo AXT9IME.APK
echo
apktool b AxT9IME
rm AxT9IME/dist/AxT9IME.apk
cp stock-apks/AxT9IME.apk AxT9IME/dist/
pushd AxT9IME/build/apk
zip -u ../../dist/AxT9IME.apk classes.dex
popd
zipalign -f 4 AxT9IME/dist/AxT9IME.apk ./AxT9IME.apk
rm -f -r AxT9IME/build
rm -f -r AxT9IME/dist

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

# BROWSEREI20.APK
echo
echo BROWSEREI20.APK
echo
apktool b BrowserEI20
rm BrowserEI20/dist/BrowserEI20.apk
cp stock-apks/BrowserEI20.apk BrowserEI20/dist/
pushd BrowserEI20/build/apk
zip -u ../../dist/BrowserEI20.apk resources.arsc
popd
zipalign -f 4 BrowserEI20/dist/BrowserEI20.apk ./BrowserEI20.apk
rm -f -r BrowserEI20/build
rm -f -r BrowserEI20/dist

# CAMERA.APK
echo
echo CAMERA.APK
echo
apktool b Camera
rm Camera/dist/Camera.apk
cp stock-apks/Camera.apk Camera/dist/
pushd Camera/build/apk
zip -u ../../dist/Camera.apk classes.dex
popd
zipalign -f 4 Camera/dist/Camera.apk ./Camera.apk
rm -f -r Camera/build
rm -f -r Camera/dist

# CARCRADLE.APK
echo
echo CARCRADLE.APK
echo
apktool b CarCradle
rm CarCradle/dist/CarCradle.apk
cp stock-apks/CarCradle.apk CarCradle/dist/
pushd CarCradle/build/apk
zip -u ../../dist/CarCradle.apk classes.dex
popd
zipalign -f 4 CarCradle/dist/CarCradle.apk ./CarCradle.apk
rm -f -r CarCradle/build
rm -f -r CarCradle/dist

# CARCRADLEEI20.APK
echo
echo CARCRADLEEI20.APK
echo
apktool b CarCradleEI20
rm CarCradleEI20/dist/CarCradleEI20.apk
cp stock-apks/CarCradleEI20.apk CarCradleEI20/dist/
pushd CarCradleEI20/build/apk
zip -u ../../dist/CarCradleEI20.apk classes.dex
zip -u ../../dist/CarCradleEI20.apk resources.arsc
popd
zipalign -f 4 CarCradleEI20/dist/CarCradleEI20.apk ./CarCradleEI20.apk
rm -f -r CarCradleEI20/build
rm -f -r CarCradleEI20/dist

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

# DESKCRADLEEI20.APK
echo
echo DESKCRADLEEI20.APK
echo
apktool b DeskCradleEI20
rm DeskCradleEI20/dist/DeskCradleEI20.apk
cp stock-apks/DeskCradleEI20.apk DeskCradleEI20/dist/
pushd DeskCradleEI20/build/apk
zip -u ../../dist/DeskCradleEI20.apk classes.dex
zip -u ../../dist/DeskCradleEI20.apk resources.arsc
popd
zipalign -f 4 DeskCradleEI20/dist/DeskCradleEI20.apk ./DeskCradleEI20.apk
rm -f -r DeskCradleEI20/build
rm -f -r DeskCradleEI20/dist

# DIALERTABACTIVITY.APK
echo
echo DIALERTABACTIVITY.APK
echo
apktool b DialerTabActivity
rm DialerTabActivity/dist/DialerTabActivity.apk
cp stock-apks/DialerTabActivity.apk DialerTabActivity/dist/
pushd DialerTabActivity/build/apk
zip -u ../../dist/DialerTabActivity.apk classes.dex
popd
zipalign -f 4 DialerTabActivity/dist/DialerTabActivity.apk ./DialerTabActivity.apk
rm -f -r DialerTabActivity/build
rm -f -r DialerTabActivity/dist

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

# SETTINGSPROVIDER.APK
echo
echo SETTINGSPROVIDER.APK
echo
apktool b SettingsProvider
rm SettingsProvider/dist/SettingsProvider.apk
cp stock-apks/SettingsProvider.apk SettingsProvider/dist/
pushd SettingsProvider/build/apk
zip -u ../../dist/SettingsProvider.apk resources.arsc
popd
zipalign -f 4 SettingsProvider/dist/SettingsProvider.apk ./SettingsProvider.apk
rm -f -r SettingsProvider/build
rm -f -r SettingsProvider/dist

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
zip -u ../../dist/TouchWiz30Launcher.apk res/xml/default_mainapplication_order.xml
zip -u ../../dist/TouchWiz30Launcher.apk res/xml/default_workspace.xml
popd
zipalign -f 4 TouchWiz30Launcher/dist/TouchWiz30Launcher.apk ./TouchWiz30Launcher.apk
rm -f -r TouchWiz30Launcher/build
rm -f -r TouchWiz30Launcher/dist

