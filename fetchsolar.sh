#!/bin/bash

wget -N --quiet http://www.hamqsl.com/solarrss.php

sed -n -r -e 's!^.*<solarflux>(.*)</solarflux>.*$!\1!p' solarrss.php > s-flux.txt

sed -n -r -e 's!^.*<aindex>(.*)</aindex>.*$!\1!p' solarrss.php > a-index.txt

sed -n -r -e 's!^.*<kindex>(.*)</kindex>.*$!\1!p' solarrss.php > k-index.txt

sed -n -r -e 's!^.*<sunspots>(.*)</sunspots>.*$!\1!p' solarrss.php > sunspots.txt

sed -n -r -e 's!^.*<signalnoise>(.*)</signalnoise>.*$!\1!p' solarrss.php > sig-noise.txt

sed -n -r -e 's!^.*<muf>(.*)</muf>.*$!\1!p' solarrss.php > muf.txt

sed -n -r -e 's!^.*<geomagfield>(.*)</geomagfield>.*$!\1!p' solarrss.php > geomag.txt

sed -n -r -e 's!^.*<solarwind>(.*)</solarwind>.*$!\1!p' solarrss.php > s-wind.txt


rm solarrss.php
