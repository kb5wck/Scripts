$!/bin/bash

## Script to monitor temps of CPU's
cpuTemp0=$(cat /sys/class/thermal/thermal_zone0/temp)
cpuTemp1=$(($cputemp0/1000))
cpuTemp2=$(($cpuTemp0/100))
cpuTempM=$(($cpuTemp2%$cpuTemp1))
echo CPU Temp"="$cpuTemp1"."$cpuTempM""
echo 10 1>&2