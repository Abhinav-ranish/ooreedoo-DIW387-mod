#!/bin/bash

# Install Wolf Launcher
adb install Wolf_Launcher.apk

# Launch it once to trigger Android's launcher selection prompt
adb shell monkey -p com.wolf.firelauncher -c android.intent.category.LAUNCHER 1

adb shell appwidget grantbind --package com.wolf.firelauncher
adb shell pm grant com.wolf.firelauncher android.permission.SET_WALLPAPER
adb shell pm grant com.wolf.firelauncher android.permission.WRITE_EXTERNAL_STORAGE
adb shell pm grant com.wolf.firelauncher android.permission.READ_EXTERNAL_STORAGE


# OPTIONAL: Attempt to set Wolf as default (may not work on all boxes)
adb shell cmd package set-home-activity com.wolf.firelauncher/.MainActivity

# Disable Ooredoo + bloat
adb shell pm disable-user --user 0 com.vianeos.ooredootv
adb shell pm disable-user --user 0 com.sagemcom.ooredoo.globalkeymanager
adb shell pm disable-user --user 0 com.sagemcom.stb.nightmaintenance
adb shell pm disable-user --user 0 com.sagemcom.stb.factosetup
adb shell pm disable-user --user 0 com.sagemcom.stb.setupcustomizer
adb shell pm disable-user --user 0 com.sagemcom.buttonsmgr
adb shell pm disable-user --user 0 com.sagemcom.bluetoothautopairing
adb shell pm disable-user --user 0 com.sagemcom.agama
adb shell pm disable-user --user 0 com.sagemcom.stb.loguploader
adb shell pm disable-user --user 0 com.sagemcom.sysupdate
adb shell pm disable-user --user 0 com.google.android.tvrecommendations
adb shell pm disable-user --user 0 com.google.android.leanbacklauncher
