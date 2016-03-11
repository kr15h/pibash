#!/bin/bash
# Each minute connect to different camera stream with omxplayer.
# Open crontab with `crontab -e` and add the following:
# * * * * * /home/pi/pibash/toggle.sh
# It will run this script every minute.

MINS=$(date +"%M")

if (( $MINS % 2 == 0 ))
then
    sudo killall omxplayer.bin
    sudo killall omxplayer
    # Connect to epilog laser camera
    omxplayer rtsp://@172.26.2.160:8554/ &
else
    sudo killall omxplayer.bin
    sudo killall omxplayer
    # Connect to CNC machine camera
    omxplayer rtsp://@172.26.2.153:8554/ &
fi

unset MINS
