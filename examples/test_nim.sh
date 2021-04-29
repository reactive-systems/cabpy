#!/bin/sh

nims="nim44 nim45 nim55 nim56 nim66 nim67 nim123 nim333 nim145 nim444 nim246 nim555 nim356 nim2222 nim2223"

mkdir -p output

echo "Nim"
echo "-----------------------------------------"
for test in $nims; do
    printf "%-17s" $test

    start=$(date +"%s%3N")
    { timeout 600 ../src/cab.py -i nim/$test.rg 2>&1; } > output/$test.cabpy.output
    status=$?
    end=$(date +"%s%3N")
    time=$(( $end - $start ))
    if [ $status -eq 124 ]; then
	time="TO"
    elif [ $status -ne 0 ]; then
	time="error"
    fi
    printf "%6s" $time

    echo ""
done
