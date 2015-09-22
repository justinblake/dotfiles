
jin () {
	package=$1
	jspm install npm:$package
}

jig () {
	package=$1
	jspm install github:$package
}

jib () {
	package=$1
	jspm install bower:$package
}

ti () {
	package=$1
	tsd install $package -ros
}

reset_web () {
	rm -rf ~/Library/Application\ Support/WebStorm*
	rm -rf ~/Library/Logs/WebStorm*
	rm -rf ~/Library/Caches/WebStorm*
	rm -rf ~/Library/Preferences/WebStorm*
}

to_stylus () {
	for file in "$@" ; do
		echo $file
		sass2stylus $file .
	done
}

do_it () {
	for file in "$@" ; do
		{
			sass2stylus $file "$2" 2>/dev/null
			echo $file
		} always {
			echo "FAILED: $file"
		}

	done
}
