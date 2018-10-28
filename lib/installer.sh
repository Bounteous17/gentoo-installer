simpleTitle "info" "Gentoo Unofficial Installer - $VERSION" "Welcome to the fast Gentoo installer\nIf it moves, compile it"

#NETWORKING
NET_TITLE="Network setup"
createIfacesOptions; simpleOptions "$NET_TITLE" "select the interface that will be used during installation" "$IFACES_OPTIONS"

ifaceSetupMethod; simpleOptions "$NET_TITLE" "Select interface setup method" "$IFACES_SETUP_MODE"

#PORTAGE
createCpuOptions; simpleOptions "CPU Setup" "Select the maximum number of CPU cores that Portage can use during installation" "$CPU_CORES_OPTIONS"
