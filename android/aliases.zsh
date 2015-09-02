
# adb
alias remove="adb shell 'su -c \"mount -o rw,remount /system;pm disable com.moki.android.kiosk;pm uninstall com.moki.android.kiosk;rm /system/app/mma.apk /data/app/com.moki.android.kiosk* /data/app-lib/com.moki.android.kiosk /sdcard/MokiMDM;mount -o remount,ro /system    ;sync;reboot\"'"
alias install="adb shell 'su -c \"mount -o rw,remount /system;cp /sdcard/mma.apk /system/app/mma.apk;chmod 0666 /system/app/mma.apk;mount -o ro,remount /system;reboot\"'"
alias pidmma='adb shell ps |grep kiosk'
alias pidmt='adb shell ps |grep com.moki.touch'
alias pidsdk='adb shell ps |grep com.example.sdktest'

#pidcat
alias logmma='pidcat com.moki.android.kiosk'
alias logmt='pidcat com.moki.touch'
alias logmt='pidcat com.example.sdktest'

alias remove44="adb shell 'su -c \"mount -o rw,remount /system;pm disable com.moki.android.kiosk;pm uninstall com.moki.android.kiosk;rm /system/priv-app/mma.apk; rm -rf /data/app/com.moki.android.kiosk* /data/app-lib/com.moki.android.kiosk /sdcard/MokiMDM;mount -o remount,ro /system    ;sync;reboot\"'"

alias install44="adb shell 'su -c \"mount -o rw,remount /system;cp /sdcard/mma.apk /system/priv-app/mma.apk;chmod 0666 /system/priv-app/mma.apk;mount -o ro,remount /system;reboot\"'"
