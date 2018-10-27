createCpuOptions() {
	CPU_CORES="nproc --all"
	COUNTER=0
	OPTIONS=()
	while [ $COUNTER -lt `$CPU_CORES` ]; do
		COUNTER=$(($COUNTER + 1));
		if [ $COUNTER -eq 1 ]; then
			OPTIONS+=("$COUNTER $COUNTER")
		elif [[ $(($COUNTER % 2)) -eq 0 ]]; then
			OPTIONS+=("$COUNTER $COUNTER")
		fi
	done

	CPU_CORES_OPTIONS="${OPTIONS[@]}"
	echo $CPU_CORES_OPTIONS
}
