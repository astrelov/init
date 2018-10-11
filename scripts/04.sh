#!/bin/bash

email="root@debian"

# md5sum /etc/crontab > /crontabsum
# run this once before running script

md5sum /etc/crontab > /newcrontabsum
changed=$(diff /crontabsum /newcrontabsum)

if [ "$changed" ]; then
	mail -s "crontab has been modified" $email < /newcrontabsum
	md5sum /etc/crontab > /crontabsum
fi

#echo '0 0 * * * /path_to_script/04.sh' | crontab
