#!/bin/bash

PATH=$PATH:/opt/android-sdk-linux/tools/

# Build Directories
export ROOTDIR=`pwd`
export OUTDIR=$ROOTDIR/out
export SRCDIR=$ROOTDIR/src
export TEMPDIR=$ROOTDIR/tmp
export ROMDIR=$OUTDIR/rom
export PLAYERDIR=$OUTDIR/player
export EXTRASDIR=$OUTDIR/extras

# Output Directories
export ROMAPP=$OUTDIR/rom/app
export ROMFRAMEWORK=$OUTDIR/rom/framework
export PLAYERAPP=$OUTDIR/player/app
export PLAYERFRAMEWORK=$OUTDIR/player/framework
export EXTRASAPP=$OUTDIR/extras/app
export EXTRASFRAMEWORK=$OUTDIR/extras/framework

# ZipAlignFile
#
# $1: ZIP/APK file to be zipaligned
ZipAlignFile()
{
	echo $1
	if [ -e "tmp/zipalign.zip" ]; then rm -f tmp/zipalign.zip; fi
	cp $1 tmp/zipalign.zip	
	zipalign -f 4 tmp/zipalign.zip $1
	rm -f tmp/zipalign.zip
}

# $1 - Source folder
# $2 - Output file name
CompileAppNoCertificate()
{
	# Compile the APK/JAR
	if [ ! -d "$(dirname $2)" ]; then mkdir $(dirname $2); fi
	apktool b $SRCDIR/$1 $2

	# Zip-Align the output file
	ZipAlignFile $2
}

# $1 - Source folder
# $2 - Output file name
CompileAppWithOriginalCertificate()
{
	# Compile the APK/JAR
	if [ ! -d "$(dirname $2)" ]; then mkdir $(dirname $2); fi
	apktool b $SRCDIR/$1 $2

	# Extract the original META-INF and AndroidManifest.xml files
	if [ -d "$TEMPDIR/META-INF" ]; then rm -fr $TEMPDIR/META-INF; fi
	if [ -e "$TEMPDIR/AndroidManifest.xml" ]; then rm -f $TEMPDIR/AndroidManifest.xml; fi

	unzip -q stock-apks/$(basename $2) META-INF* -d $TEMPDIR/
	unzip -q stock-apks/$(basename $2) AndroidManifest.xml -d $TEMPDIR/

	# If the original META-INF information existed, add to new APK/JAR
	if [ -d "$TEMPDIR/META-INF" ]; then
		pushd $TEMPDIR > /dev/null
		zip -qur $2 "META-INF"
		popd > /dev/null
		rm -fr $TEMPDIR/META-INF
	fi

	# If the original AndroidManifest.xml file existed, add to new APK/JAR
	if [ -e "$TEMPDIR/AndroidManifest.xml" ]; then
		pushd $TEMPDIR > /dev/null
		zip -qd $2 AndroidManifest.xml
		zip -qu $2 AndroidManifest.xml
		popd > /dev/null
		rm -f $TEMPDIR/AndroidManifest.xml
	fi

	# Zip-Align the output file
	ZipAlignFile $2	
}

# Recreate output and temporary directories
if [ -d "$OUTDIR" ]; then rm -fr out; fi
if [ -d "$TEMPDIR" ]; then rm -fr tmp; fi
mkdir $OUTDIR
mkdir $ROMDIR
mkdir $PLAYERDIR
mkdir $EXTRASDIR
mkdir $TEMPDIR

# CLEAN APKTOOL FRAMEWORKS
rm -f -r ~/apktool
echo

# FRAMEWORK-RES.APK
echo FRAMEWORK-RES.APK
echo
CompileAppWithOriginalCertificate 	framework-res 			$ROMFRAMEWORK/framework-res.apk
echo

# ** REGISTER UPDATED APKTOOL FRAMEWORKS **
apktool if $ROMFRAMEWORK/framework-res.apk
apktool if stock-apks/twframework-res.apk
echo

# ANDROID.POLICY.JAR
echo ANDROID.POLICY.JAR
echo
CompileAppWithOriginalCertificate 	android.policy.jar.out 		$ROMFRAMEWORK/android.policy.jar
echo

# ANDROID.POLICY.JAR-PLAYER
echo ANDROID.POLICY.JAR-PLAYER
echo
CompileAppWithOriginalCertificate 	android.policy.jar.out-Player	$PLAYERFRAMEWORK/android.policy.jar
echo

# FRAMEWORK.JAR
echo FRAMEWORK.JAR
echo
CompileAppWithOriginalCertificate 	framework.jar.out 		$ROMFRAMEWORK/framework.jar
echo

# FRAMEWORK-RES-SBRISSENMETER.APK
echo FRAMEWORK-RES-SBRISSENMETER.APK
echo
CompileAppWithOriginalCertificate 	framework-res-sbrissenmeter 	$EXTRASFRAMEWORK/framework-res-sbrissenmeter.apk
echo

# FRAMEWORK-RES-STOCKBATTERYMETER.APK
echo FRAMEWORK-RES-STOCKBATTERYMETER.APK
echo
CompileAppWithOriginalCertificate 	framework-res-stockbatterymeter	$EXTRASFRAMEWORK/framework-res-stockbatterymeter.apk
echo

# SERVICES.JAR
echo SERVICES.JAR
echo
CompileAppWithOriginalCertificate 	services.jar.out 		$ROMFRAMEWORK/services.jar
echo

# AXT9IME.APK
echo AXT9IME.APK
echo
CompileAppWithOriginalCertificate 	AxT9IME 			$ROMAPP/AxT9IME.apk
echo

# BROWSER.APK
echo BROWSER.APK
echo
CompileAppWithOriginalCertificate 	Browser 			$ROMAPP/Browser.apk
echo

# BROWSEREH03.APK
echo BROWSEREH03.APK
echo
CompileAppWithOriginalCertificate 	BrowserEH03 			$EXTRASAPP/BrowserEH03.apk
echo

# CAMERA.APK
echo CAMERA.APK
echo
CompileAppWithOriginalCertificate 	Camera 				$ROMAPP/Camera.apk
echo

# CARCRADLE.APK
echo CARCRADLE.APK
echo
CompileAppWithOriginalCertificate 	CarCradle			$ROMAPP/CarCradle.apk
echo

# CARCRADLEEH03.APK
echo CARCRADLEEH03.APK
echo
CompileAppWithOriginalCertificate 	CarCradleEH03 			$EXTRASAPP/CarCradleEH03.apk
echo

# DESKCRADLE.APK
echo DESKCRADLE.APK
echo
CompileAppWithOriginalCertificate 	DeskCradle			$ROMAPP/DeskCradle.apk
echo

# DESKCRADLEEH03.APK
echo DESKCRADLEEH03.APK
echo
CompileAppWithOriginalCertificate 	DeskCradleEH03 			$EXTRASAPP/DeskCradleEH03.apk
echo

# DIALERTABACTIVITY.APK
echo DIALERTABACTIVITY.APK
echo
CompileAppWithOriginalCertificate 	DialerTabActivity 		$ROMAPP/DialerTabActivity.apk
echo

# JOBMANAGER.APK
echo JOBMANAGER.APK
echo
CompileAppWithOriginalCertificate 	JobManager			$ROMAPP/JobManager.apk
echo

# MUSICPLAYER.APK
echo MUSICPLAYER.APK
echo
CompileAppWithOriginalCertificate 	MusicPlayer 			$ROMAPP/MusicPlayer.apk
echo

# PHONE-PLAYER.APK --> PHONE.APK
echo PHONE-PLAYER.APK
echo
CompileAppWithOriginalCertificate 	Phone-Player 			$PLAYERAPP/Phone.apk
echo

# SETTINGS.APK
echo SETTINGS.APK
echo
CompileAppWithOriginalCertificate 	Settings 			$ROMAPP/Settings.apk
echo

# SETTINGS-PLAYER.APK
echo SETTINGS-PLAYER.APK
echo
CompileAppWithOriginalCertificate 	Settings-Player 		$PLAYERAPP/Settings.apk
echo

# SETTINGSPROVIDER.APK
echo SETTINGSPROVIDER.APK
echo
CompileAppWithOriginalCertificate 	SettingsProvider 		$ROMAPP/SettingsProvider.apk
echo

# SETTINGSPROVIDER-PLAYER.APK
echo SETTINGSPROVIDER-PLAYER.APK
echo
CompileAppWithOriginalCertificate 	SettingsProvider-PLAYER 	$PLAYERAPP/SettingsProvider.apk
echo

# SYSTEMUI.APK
echo SYSTEMUI.APK
echo
CompileAppWithOriginalCertificate 	SystemUI			$ROMAPP/SystemUI.apk
echo

# SYSTEMUI-PLAYER.APK
echo SYSTEMUI-PLAYER.APK
echo
CompileAppWithOriginalCertificate 	SystemUI-Player			$PLAYERAPP/SystemUI.apk
echo

# TOUCHWIZ30LAUNCHER.APK
echo TOUCHWIZ30LAUNCHER.APK
echo
CompileAppWithOriginalCertificate 	TouchWiz30Launcher 		$ROMAPP/TouchWiz30Launcher.apk
echo

# TOUCHWIZ30LAUNCHEREH03.APK
echo TOUCHWIZ30LAUNCHEREH03.APK
echo
CompileAppWithOriginalCertificate 	TouchWiz30LauncherEH03 		$EXTRASAPP/TouchWiz30LauncherEH03.apk
echo

# TWWALLPAPERCHOOSER.APK
echo TWWALLPAPERCHOOSER.APK
echo
CompileAppWithOriginalCertificate 	TwWallpaperChooser		$ROMAPP/TwWallpaperChooser.apk
echo

# Remove TEMP directory after build
if [ -d "$TEMPDIR" ]; then rm -fr tmp; fi

