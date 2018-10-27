createCpuOptions() {
	CPU_CORES="nproc --all"
	COUNTER=0
	OPTIONS_COUNT=1
	OPTIONS=()
	while [ $COUNTER -lt `$CPU_CORES` ]; do
		COUNTER=$(($COUNTER + 1));
		if [ $COUNTER -eq 1 ] || [[ $(($COUNTER % 2)) -eq 0 ]]; then
			OPTIONS+=("$OPTIONS_COUNT $COUNTER")
			OPTIONS_COUNT=$(($OPTIONS_COUNT + 1));
		fi
	done

	CPU_CORES_OPTIONS="${OPTIONS[@]}"
}
