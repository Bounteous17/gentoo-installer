createIfacesOptions() {
	IFACES=$(ifconfig | grep flags | grep -v "lo" | awk -F: '{print $1;}')
	COUNTER=0
	OPTIONS=()
	for iface in $IFACES; do
		OPTIONS+=("$COUNTER $iface")
	done
	
	IFACES_OPTIONS="${OPTIONS[@]}"
}
