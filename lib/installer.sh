simpleTitle "info" "Gentoo Unofficial Installer" "Welcome to the fast Gentoo installer\nIf it moves, compile it"

createIfacesOptions; simpleOptions "Network Setup" "Select interface to configure" "$IFACES_OPTIONS"

createCpuOptions; simpleOptions "CPU Setup" "Select the maximum number of CPU cores that Portage can use during installation" "$CPU_CORES_OPTIONS"
