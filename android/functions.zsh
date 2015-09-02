mma_install () {
	adb push $2 /sdcard/mma.apk
	echo "Pushed $2"

	echo "Installing mma"
	folder=$1
	adb shell "
		su -c '
		mount -o rw,remount /system
		cp /sdcard/mma.apk /system/$folder/mma.apk
		chmod 0666 /system/$folder/mma.apk
		mount -o ro,remount /system'
		reboot;
	"
	echo "Success, rebooting"
}

mma_rm () {
	folder=$1
	adb shell "
		su -c '
		mount -o rw,remount /system
		pm disable com.moki.android.kiosk
		rm /system/$folder/mma.apk
		rm -rf /sdcard/MokiMDM
		mount -o ro,remount /system'
		sync;
		reboot;
	"
	echo "Success, rebooting"
}

agent_install() {
	adb install $1
}

agent_rm() {
	#  /data/app/com.moki.samsungagent-1.apk
	adb shell "pm disable com.moki.samsungagent"
	sleep 3
	adb shell "
		pm uninstall com.moki.samsungagent;
	"
	if [[ $1 ]]; then
		adb shell "reboot"
	fi
}
