#!/usr/bin/env bash

cd ~/Photo/

find DCIM/ -name \*.JPG -exec mv {} JPEG \;
find DCIM/ -name \*.NEF -exec mv {} RAW \;

cd ./JPEG
exiftool '-Directory<DateTimeOriginal' -d %Y-%m-%d .
cd ../RAW
exiftool '-Directory<DateTimeOriginal' -d %Y-%m-%d .