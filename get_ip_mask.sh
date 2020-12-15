#!/bin/bash

# Script to get your IP and mask
# KB5WCK - 15Dec2020
# make sure to chmod +x this file or you will need to run it like so:  bash ./get_ip_mask.sh

ip addr show | grep inet | grep -v "inet6" | sed "s/^[ \t]*//"|cut -d " " -f2 | grep -v "127.0.0.1/8"
