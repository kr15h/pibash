#!/bin/bash

# Name:         toggle.sh
# Description:  Do one thing if current minute is an even number, Something else if odd.
# Instructions: Replace all occurences of process-a and process-b with your own.

MINS=$(date +"%M")

if (( $MINS % 2 == 0 ))
then
    sudo killall process-b
    /path/to/process-a &
else
    sudo killall process-a
    /path/to/process-b &
fi

unset MINS
