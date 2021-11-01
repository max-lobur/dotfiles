#!/usr/bin/env bash

find ~/Photo/DCIM/ -name \*.JPG -exec mv {} ~/Photo/JPEG \;
find ~/Photo/DCIM/ -name \*.NEF -exec mv {} ~/Photo/RAW \;