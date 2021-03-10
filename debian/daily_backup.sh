#!/bin/sh
cd /home/backup
if [ ! -d `date '+%Y%m%d'` ]; then
        mkdir `date '+%Y%m%d'`
fi
cd `date '+%Y%m%d'`
# /home/www1
tar cvjfP home_www1.tgz /home/www1
# remove old backup data
find /home/backup -ctime +31 -exec rm -rf {} \;
