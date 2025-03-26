# Description: Install SmartTubeNext and custom tools on Android TV

#!/bin/bash

# Install SmartTubeNext
adb install SmartTube_stable_26.95_arm64-v8a.apk

# Install File Manager
adb install FileManager.apk

# Push wallpapers, icons, bootanimation (not active without root)
# adb push pink.png /sdcard/Download/

# Enable Developer Settings (optional tweak)
adb shell settings put global development_settings_enabled 1

# Done – launcher should now show YouTube, SmartTube, and custom tools!