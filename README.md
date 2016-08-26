# pibash

A collection of simple shell scripts for various tasks one might want to do with the Raspberry Pi or any other bash enabled system.

Currently it is more like a personal library of the scripts and will be updated gradually. Namely - when there will be a need for a new script, it will be added. 

## Cron

Scripts here might require the use of Cron to be run at certain time intervals. To run a script once per minute, type the following to open Cron table file.

```
crontab -e
```

Add the following line at the end of the file.

```
* * * * * /path/to/your/script.sh
```

The first asterisk means all minutes (0 - 59), the second means hours (0 - 23), then days of month (1 - 31), all months (1 - 12) and lastly all days of week (0 - 6, where 0 is Sunday). The minimum time interval in Cron is one minute.

Replace `/path/to/your/script.sh` with the actual path to your script file. Remember to enable execution permissions on the file with the following.

`chmod a+x /path/to/your/script.sh`


## License

Choose Freedom. Do What the Fuck You Want to. See [LICENSE](./LICENSE) for more details or visit [WTFPL](http://www.wtfpl.net/) website.
