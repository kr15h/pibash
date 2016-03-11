#! /bin/bash

# keepalive.sh
# Basic script to keep alive your process.
# Instructions
# Replace myprocess in the script with your actual process name.
# Save the file as keepalive.sh somewhere, /home/pi/keepalive.sh is a good choice.
# Set up cron task by editing crontab with crontab -e. 
# Add * * * * * /home/pi/keepalive.sh - the script will be run once a minute 
# and restart your process if it has failed.

case "$(pidof myprocess | wc -w)" in

0)  echo "Restarting My Process:     $(date)" >> /var/log/myprocess.txt
    /home/pi/myprocess -and -some -args &
    ;;
1)  # all ok
    ;;
*)  echo "Removed double My Process: $(date)" >> /var/log/myprocess.txt
    kill $(pidof myprocess | awk '{print $1}')
    ;;
esac
