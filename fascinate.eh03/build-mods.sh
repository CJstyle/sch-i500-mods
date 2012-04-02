#!/bin/bash

PATH=$PATH:/opt/android-sdk-linux/tools/

# Create output folders
if [ ! -d "out" ]; then
	mkdir out
else
	rm -fr out/
fi

# OUTPUT: Standard ROM
if [ ! -d "out/rom" ]; then
	mkdir out/rom
fi
if [ ! -d "out/rom/app" ]; then
	mkdir out/rom/app
fi
if [ ! -d "out/rom/framework" ]; then
	mkdir out/rom/framework
fi

# OUTPUT: Player ROM
if [ ! -d "out/playerrom" ]; then
	mkdir out/playerrom
fi
if [ ! -d "out/playerrom/app" ]; then
	mkdir out/playerrom/app
fi
if [ ! -d "out/playerrom/framework" ]; then
	mkdir out/playerrom/framework
fi

# OUTPUT: Extras
if [ ! -d "out/extras" ]; then
	mkdir out/extras
fi
if [ ! -d "out/extras/app" ]; then
	mkdir out/extras/app
fi
if [ ! -d "out/extras/framework" ]; then
	mkdir out/extras/framework
fi

# CLEAN APKTOOL FRAMEWORKS
rm -f -r ~/apktool

# FRAMEWORK-RES.APK
apktool b src/framework-res
zipalign -f 4 src/framework-res/dist/framework-res.apk out/rom/framework/framework-res.apk
zipalign -f 4 src/framework-res/dist/framework-res.apk out/playerrom/framework/framework-res.apk

# ** REGISTER UPDATED APKTOOL FRAMEWORKS **
apktool if out/rom/framework/framework-res.apk
apktool if stock-apks/twframework-res.apk

# ANDROID.POLICY.JAR
apktool b src/android.policy.jar.out
zipalign -f 4 src/android.policy.jar.out/dist/android.policy.jar out/rom/framework/android.policy.jar
zipalign -f 4 src/android.policy.jar.out/dist/android.policy.jar out/playerrom/framework/android.policy.jar

# FRAMEWORK.JAR
apktool b src/framework.jar.out
zipalign -f 4 src/framework.jar.out/dist/framework.jar out/rom/framework/framework.jar
zipalign -f 4 src/framework.jar.out/dist/framework.jar out/playerrom/framework/framework.jar

# FRAMEWORK-RES-SBRISSENMETER.APK
apktool b src/framework-res-sbrissenmeter
zipalign -f 4 src/framework-res-sbrissenmeter/dist/framework-res-sbrissenmeter.apk out/extras/framework/framework-res-sbrissenmeter.apk

# FRAMEWORK-RES-STOCKBATTERYMETER.APK
apktool b src/framework-res-stockbatterymeter
zipalign -f 4 src/framework-res-stockbatterymeter/dist/framework-res-stockbatterymeter.apk out/extras/framework/framework-res-stockbatterymeter.apk

# SERVICES.JAR
apktool b src/services.jar.out
zipalign -f 4 src/services.jar.out/dist/services.jar out/rom/framework/services.jar
zipalign -f 4 src/services.jar.out/dist/services.jar out/playerrom/framework/services.jar

# AXT9IME.APK
apktool b src/AxT9IME
zipalign -f 4 src/AxT9IME/dist/AxT9IME.apk out/rom/app/AxT9IME.apk
zipalign -f 4 src/AxT9IME/dist/AxT9IME.apk out/playerrom/app/AxT9IME.apk

# BROWSER.APK
apktool b src/Browser
zipalign -f 4 src/Browser/dist/Browser.apk out/rom/app/Browser.apk

# BROWSER-PLAYER.APK
apktool b src/Browser-Player
zipalign -f 4 src/Browser-Player/dist/Browser-Player.apk out/playerrom/app/Browser.apk

# BROWSEREH03.APK
apktool b src/BrowserEH03
zipalign -f 4 src/BrowserEH03/dist/BrowserEH03.apk out/extras/app/BrowserEH03.apk

# CAMERA.APK
apktool b src/Camera
zipalign -f 4 src/Camera/dist/Camera.apk out/rom/app/Camera.apk
zipalign -f 4 src/Camera/dist/Camera.apk out/playerrom/app/Camera.apk

# CARCRADLE.APK
apktool b src/CarCradle
zipalign -f 4 src/CarCradle/dist/CarCradle.apk out/rom/app/CarCradle.apk
zipalign -f 4 src/CarCradle/dist/CarCradle.apk out/playerrom/app/CarCradle.apk

# CARCRADLEEH03.APK
apktool b src/CarCradleEH03
zipalign -f 4 src/CarCradleEH03/dist/CarCradleEH03.apk out/extras/app/CarCradleEH03.apk

# DESKCRADLE.APK
apktool b src/DeskCradle
zipalign -f 4 src/DeskCradle/dist/DeskCradle.apk out/rom/app/DeskCradle.apk
zipalign -f 4 src/DeskCradle/dist/DeskCradle.apk out/playerrom/app/DeskCradle.apk

# DESKCRADLEEH03.APK
apktool b src/DeskCradleEH03
zipalign -f 4 src/DeskCradleEH03/dist/DeskCradleEH03.apk out/extras/app/DeskCradleEH03.apk

# DIALERTABACTIVITY.APK
apktool b src/DialerTabActivity
zipalign -f 4 src/DialerTabActivity/dist/DialerTabActivity.apk out/rom/app/DialerTabActivity.apk

# DIALERTABACTIVITY-PLAYER.APK
apktool b src/DialerTabActivity-Player
zipalign -f 4 src/DialerTabActivity-Player/dist/DialerTabActivity-Player.apk out/playerrom/app/DialerTabActivity.apk

# JOBMANAGER.APK
apktool b src/JobManager
zipalign -f 4 src/JobManager/dist/JobManager.apk out/rom/app/JobManager.apk
zipalign -f 4 src/JobManager/dist/JobManager.apk out/playerrom/app/JobManager.apk

# MUSICPLAYER.APK
apktool b src/MusicPlayer
zipalign -f 4 src/MusicPlayer/dist/MusicPlayer.apk out/rom/app/MusicPlayer.apk

# MUSICPLAYER-PLAYER.APK
apktool b src/MusicPlayer-Player
zipalign -f 4 src/MusicPlayer-Player/dist/MusicPlayer-Player.apk out/playerrom/app/MusicPlayer.apk

# SETTINGS.APK
apktool b src/Settings
zipalign -f 4 src/Settings/dist/Settings.apk out/rom/app/Settings.apk

# SETTINGS-PLAYER.APK
apktool b src/Settings-Player
zipalign -f 4 src/Settings-Player/dist/Settings-Player.apk out/playerrom/app/Settings-Player.apk

# SETTINGSPROVIDER.APK
apktool b src/SettingsProvider
zipalign -f 4 src/SettingsProvider/dist/SettingsProvider.apk out/rom/app/SettingsProvider.apk

# SETTINGSPROVIDER-PLAYER.APK
apktool b src/SettingsProvider-Player
zipalign -f 4 src/SettingsProvider-Player/dist/SettingsProvider-Player.apk out/playerrom/app/SettingsProvider.apk

# SYSTEMUI.APK
apktool b src/SystemUI
zipalign -f 4 src/SystemUI/dist/SystemUI.apk out/rom/app/SystemUI.apk
zipalign -f 4 src/SystemUI/dist/SystemUI.apk out/playerrom/app/SystemUI.apk

# TOUCHWIZ30LAUNCHER.APK
apktool b src/TouchWiz30Launcher
zipalign -f 4 src/TouchWiz30Launcher/dist/TouchWiz30Launcher.apk out/rom/app/TouchWiz30Launcher.apk

# TOUCHWIZ30LAUNCHER-PLAYER.APK
apktool b src/TouchWiz30Launcher-Player
zipalign -f 4 src/TouchWiz30Launcher-Player/dist/TouchWiz30Launcher-Player.apk out/playerrom/app/TouchWiz30Launcher.apk

# TOUCHWIZ30LAUNCHEREH03.APK
apktool b src/TouchWiz30LauncherEH03
zipalign -f 4 src/TouchWiz30LauncherEH03/dist/TouchWiz30LauncherEH03.apk out/extras/app/TouchWiz30LauncherEH03.apk

# TWWALLPAPERCHOOSER.APK
apktool b src/TwWallpaperChooser
zipalign -f 4 src/TwWallpaperChooser/dist/TwWallpaperChooser.apk out/rom/app/TwWallpaperChooser.apk
zipalign -f 4 src/TwWallpaperChooser/dist/TwWallpaperChooser.apk out/playerrom/app/TwWallpaperChooser.apk

# VIDEOPLAYER-PLAYER.APK
apktool b src/VideoPlayer-Player
zipalign -f 4 src/VideoPlayer-Player/dist/VideoPlayer-Player.apk out/playerrom/app/VideoPlayer.apk


