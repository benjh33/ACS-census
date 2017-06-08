#!/bin/sh

# get the current path
CURPATH=`pwd`

inotifywait -mr --timefmt '%d/%m/%y %H:%M' --format '%T %w %f' \
	-e close_write /home/centos/cloudera-setup | while read date time dir file; do
    FILECHANGE=${dir}${file}
    # convert absolute path to relative
    FILECHANGEREL=`echo "$FILECHANGE" | sed 's_'$CURPATH'/__'` 
	rsync --progress --relative -pvrae 'ssh -i /home/centos/.ssh/cloudera-cluster.pem' \
		$FILECHANGEREL centos@172.30.3.16:/home/centos/cloudera-setup && \ 
	echo "At ${time} on ${date}, file $FILECHANGE was backed up via rsync"
done;
