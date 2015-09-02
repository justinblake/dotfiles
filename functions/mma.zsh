

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
