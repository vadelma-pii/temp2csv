#!/bin/bash
while sleep 1 ; do printf "%s, %s, %s\n" "`date --rfc-3339=seconds`" "$((`cat /sys/class/thermal/thermal_zone0/temp`/1000))" "$((`cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq`/1000))" ; done
