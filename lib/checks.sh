echo ""; colorizeLog "info" "Performing initial system checks"; echo ""

if [[ -z "${DIALOGRC}" ]]; then
        export DIALOGRC=`pwd`/.dialogrc
fi

if ! which dialog >/dev/null; then
	colorizeLog "err" "dialog command is not found on the system: emerge -a dialog"
	exit 1;
else	
	colorizeLog "succ" "dialog dependence found"
fi

if ! which nproc >/dev/null; then
	colorizeLog "err" "coreutils not installed: emerge -a coreutils"
	exit 1;
else
	colorizeLog "succ" "coreutils dependence found"
fi


colorizeLog "info" "System dependeces satisfied"; echo ""
