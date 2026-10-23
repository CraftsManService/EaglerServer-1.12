#!/bin/bash
echo "Downloading the real 25MB proxy engine file..."
URL_PART1="https://github.com"
URL_PART2="/releases/download/1.20-556/waterfall-1.20-556.jar"
wget -O bungee.jar "${URL_PART1}${URL_PART2}"
