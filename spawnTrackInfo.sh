#! /bin/bash

while true; do
    echo "fsfs"
    tail -f -n 1 logs/playlist.log  |  ( read h; echo ${h:42} ) >> currentTrack.txt 
    sleep 5
done