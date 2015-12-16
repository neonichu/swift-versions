#!/bin/bash

VERSIONS=`curl -s 'https://swift.org/download/'|grep 'osx.pkg'|sed -e 's_.*/swift-\(.*\)-osx.pkg.*_\1_'`

if [ -z "$1" ]
then
	echo "Usage: $0 port"
	exit 1
fi

while true
do
	if [[ "`uname`" == "Darwin" ]]
	then
		echo "\n$VERSIONS"|nc -l localhost $1
	else
		echo -e "HTTP/1.1 200 OK\r\n\r\n $VERSIONS"|nc -l -p $1
	fi

	if [ $? -ne 0 ]
	then
		break
	fi
done
