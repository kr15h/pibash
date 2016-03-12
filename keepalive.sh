#!/bin/bash

# Name:         keepalive.sh
# Description:  Basic script to keep alive your process.
# Instructions: Replace myprocess in the script with your actual process name.

case "$(pidof myprocess | wc -w)" in

0)  echo "Restarting My Process:     $(date)" >> /var/log/myprocess.txt
    /path/to/myprocess &
    ;;
1)  # all ok
    ;;
*)  echo "Removed double My Process: $(date)" >> /var/log/myprocess.txt
    kill $(pidof myprocess | awk '{print $1}')
    ;;
esac
