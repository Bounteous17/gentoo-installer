simpleTitle() {
	message=$2
	title=$3
	stat=$1

	if [ "$stat" = "info" ]; then
		dialog --title "$message" --msgbox "$title" 7 50
	else
		colorizeLog "err" "Syntax error: Missing dialog status"
		exit 1
	fi
}

simpleOptions() {
	message=$2
	title=$1
	options=$3
	dialog --backtitle "$title" --menu "$message" 15 40 4 $options
}
