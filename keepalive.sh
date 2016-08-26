#!/bin/bash

# Name:         keepalive.sh
# Description:  Basic script to keep alive your process.
# Instructions: Replace myprocess in the script with your actual process name.
# Add the script to crontab. Use 'crontab -e' to edit your cron file.
# Add the following lines.
#
# @reboot /home/pi/pibash/keepalive.sh
# * * * * * /home/pi/pibash/keepalive.sh
#
# This will run 'keepalive.sh' on reboot and every minute.

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
