#!/bin/bash

# This script downloads the latest solar data image
# for use in conky
# Should be run via cron once per hour
# 21Dec2020 KB5WCK

cd ~/Downloads

wget http://www.hamqsl.com/solarpich.php

mv solarpich.php solarpich.gif
