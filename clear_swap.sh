#!/bin/bash

echo "Temporarily Stopping Swap..."
sudo dphys-swapfile swapoff

##sleeping for 15 seconds
echo "Waiting for swap to empty - 15 seonds..."
sleep 15

echo "Initializing Swap File..."
sudo dphys-swapfile setup

echo "Restarting Swap..."
sudo dphys-swapfile swapon

echo "Swap memory cleared!"