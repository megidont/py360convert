#!/usr/bin/bash

if python convert360 --convert c2e --mode nearest --i $1 --o $1eq.png --w 1920 --h 1280; then

	echo "$1 was converted successfully.";

else

	echo "$1 failed to convert. Press enter to continue.";
	read pause;
	exit $((16#B0DAC105));

fi