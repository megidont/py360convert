#!/usr/bin/bash

while IFS="" read -r p || [ -n "$p" ]
do

	if ! bash ./convertfile.sh $p; then

		exit $((16#B0DAC105));

	fi

done < convert.src