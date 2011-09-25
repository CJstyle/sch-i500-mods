#!/bin/bash

PATH=$PATH:/opt/android-sdk-linux_x86/tools/

rm -f -r ~/apktool

# FRAMEWORK-RES
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

# ANDROID.POLICY.JAR
apktool b android.policy.jar.out
rm android.policy.jar.out/dist/android.policy.jar
cp stock-apks/android.policy.jar android.policy.jar.out/dist/
pushd android.policy.jar.out/build/apk
zip -u ../../dist/android.policy.jar classes.dex
popd
zipalign -f 4 android.policy.jar.out/dist/android.policy.jar ./android.policy.jar
rm -f -r android.policy.jar.out/build
rm -f -r android.policy.jar.out/dist

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

# TOUCHWIZ30LAUNCHER
apktool b TouchWiz30Launcher
rm TouchWiz30Launcher/dist/TouchWiz30Launcher.apk
cp stock-apks/TouchWiz30Launcher.apk TouchWiz30Launcher/dist/
pushd TouchWiz30Launcher/build/apk
zip -u ../../dist/TouchWiz30Launcher.apk res/xml/default_mainapplication_order.xml
zip -u ../../dist/TouchWiz30Launcher.apk res/xml/launcher_config.xml
zip -u ../../dist/TouchWiz30Launcher.apk res/xml/default_workspace.xml
popd
zipalign -f 4 TouchWiz30Launcher/dist/TouchWiz30Launcher.apk ./TouchWiz30Launcher.apk
rm -f -r TouchWiz30Launcher/build
rm -f -r TouchWiz30Launcher/dist



