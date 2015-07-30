
mma_rm () {
adb shell <<EOF
	su
	mount -o rw,remount /system
	pm disable com.moki.android.kiosk
	pm uninstall com.moki.android.kiosk
	rm /system/app/mma.apk /data/app/com.moki.android.kiosk* /data/app-lib/com.moki.android.kiosk
	rm -rf /sdcard/MokiMDM
	mount -o ro,remount /system
	sync
	reboot
EOF
}


mma_install () {
	vared -p 'Path to apk? ' -c apk
	adb push $apk /sdcard/mma.apk
	echo "Pushed $apk"

	echo "Installing mma"

adb shell <<EOF
	su
	mount -o rw,remount /system
	cp /sdcard/mma.apk /system/app/mma.apk
	chmod 0666 /system/app/mma.apk
	mount -o ro,remount /system
	reboot
EOF
}

mma_push () {
		adb push $1 /sdcard/mma.apk
}

mma_install_old () {
	(
		echo su
		echo mount -o rw,remount /system
		echo cp /sdcard/mma.apk /system/app/mma.apk
		echo chmod 0666 /system/app/mma.apk
		echo mount -o ro,remount /system
		echo reboot

	) | adb shell
}
