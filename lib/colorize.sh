colorizeLog() {
	textColor=$1

	if [ "$textColor" == "err" ]; then
		textOut=1
		textData="[-] Error: $2"
	elif [ "$textColor" == "succ" ]; then
		textOut=10
		textData="[+] Success: $2"
	elif [ "$textColor" == "info" ]; then
		textOut=5
		textData="[I] Info: $2"
	elif [ "$textColor" == "warn" ]; then
		textOut=11
		textData="[!] Warning: $2"
	elif [ "$textColor" == "dbg" ]; then
		textOut=8
		textData="[D] Debug: $2"
	else
		echo "Syntax error: Missing color output :("
		exit 1
	fi
	
	echo -e "$(tput setaf $textOut) $textData $(tput sgr 0)"
}
