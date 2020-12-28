#!/bin/bash

tempC=$(/opt/vc/bin/vcgencmd measure_temp | cut -c6-9)
tempF=$(echo "scale=2; 1.8 * $tempC +32" | bc)
#printf "Celsius:  ${tempC}\n"
printf "${tempF} F"
