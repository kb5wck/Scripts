#!/bin/bash

## Script to stop TNC connection
## 4-January-2021
## Jeff Grantham - KB5WCK

## Kill all TNC connections
sudo killall kissattach
sudo rfcomm release /dev/rfcomm0
