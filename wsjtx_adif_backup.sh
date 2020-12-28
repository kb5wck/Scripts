#!/bin/bash
#script to backup wsjtx log to file with date in name

## Get current date ##
_now=$(date +"%d_%b_%Y")

#echo $_now

## Appending a current date from a $_now to a filename stored in $_file ##
_file="/home/pi/.local/share/WSJT-X/adif/wsjtx_log_$_now.adi"

echo "Copying data to " "$_file"

mv ~/.local/share/WSJT-X/wsjtx_log.adi "$_file"

touch ~/.local/share/WSJT-X/wsjtx_log.adi

echo "Finished making backup."

exit