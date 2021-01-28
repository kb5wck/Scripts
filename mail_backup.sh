#!/bin/bash

#this script will backup all winlink messages
#to an external thumb drive. You can specify
#the exact path when starting the file or allow
#the script to look for an external drive automatically.
#To specify a path, add it when calling the script.
#example 
#18DEC2020 KM4ACK

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
    echo "$DATE Winlink backup failed. Path not set and external drive not found" >> $HOME/Documents/mylog.txt
    exit 1
    fi
DIR=/media/pi/$DIR
else
DIR=$1
fi

#create backup dir
mkdir $DIR/WinLink/$BKUPTIME

#copy file to backup dir
cp -r $HOME/.wl2k/mailbox/$CALL/* $DIR/WinLink/$BKUPTIME

#verify success and write to log file
if [ -d "$DIR/WinLink/$BKUPTIME/in" ]; then
echo "$DATE Winlink messages backed up to $DIR" >> $HOME/Documents/mylog.txt
else
echo "$DATE Winlink backup failed" >> $HOME/Documents/mylog.txt
fi
