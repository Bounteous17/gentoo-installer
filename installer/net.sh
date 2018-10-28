createIfacesOptions() {
	IFACES=$(ifconfig | grep flags | grep -v "lo" | awk -F: '{print $1;}')
	COUNTER=0
	OPTIONS=()
	for iface in $IFACES; do
		COUNTER=$(($COUNTER + 1));	
		OPTIONS+=("$COUNTER $iface")
	done
	IFACES_OPTIONS="${OPTIONS[@]}"
}

ifaceSetupMethod() {
	IFACES_METHOD=()
	IFACES_METHOD+=("1 Manual-network-configuration 2 Using-DHCP")
	IFACES_SETUP_MODE="${IFACES_METHOD[@]}"
}
