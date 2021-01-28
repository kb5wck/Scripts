#!/bin/bash
#script to backup wsjtx log to file with date in name
# 19 January 2021
# KB5WCK - Jeff Grantham

#sleep for 30 seconds while pi boots
sleep 30

#set a few variables
CALL=$(grep MYCALLSIGN ~/patmenu2/config | sed 's/MYCALLSIGN=//')
BKUPTIME=$(date +%Y%d%m-%H%M)
DATE=$(date)

#check to see if user indicated path
#use external drive if not
if [ -z $1 ]; then
DIR=$(ls /media/pi)
    #verify we have anexternal drive to work with
    if [ -z $DIR ]; then
    echo "External drive not found." 
    echo "$DATE GridTracker backup failed. Path not set and external drive not found" >> $HOME/Documents/mylog.txt
    exit 1
    fi
DIR=/media/pi/$DIR
else
DIR=$1
fi

#create backup dir
mkdir $DIR/GridTracker/$BKUPTIME

#copy file to backup dir
cp -r $HOME/Documents/GridTracker/* $DIR/GridTracker/$BKUPTIME

#verify success and write to log file
if [ -d "$DIR/Gridtracker/$BKUPTIME/media" ]; then
echo "$DATE Gridtracker messages backed up to $DIR" >> $HOME/Documents/mylog.txt
else
echo "$DATE GridTracker backup failed" >> $HOME/Documents/mylog.txt
fi