#!/bin/bash

## Script to start the MobiLinkd TNC2 modem and connect to pi zero
## 4-January-2021
## Jeff Grantham - KB5WCK

# Kill all previous connections if any exist
sudo killall kissattach
sudo rfcomm release /dev/rfcomm0

# Create new connection
sudo rfcomm bind /dev/rfcomm0 <enter your TNC MAC address here>
sudo kissattach /dev/rfcomm0 wl2k

# this is for TNC 2 modems only
sudo kissparams -c 1 -p wl2k
