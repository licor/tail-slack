#!/bin/bash


HOOK_URL=""

if [ -z "$HOOK_URL" ]; then
	echo "ERROR: You should to edit this file and setup the HOOK_URL variable."
	echo "Type vi tail-slash.sh +4 to setup HOOK URL."
	echo
	exit 1
fi

if [ -z "$1" -o -z "$2"  ]; then
	echo "Usage: tail-slack.sh <file> <channel>"
	echo
	exit 1
fi


tail -n0 -F "$1" | while read LINE; do
  (echo "$LINE") && curl -X POST --silent --data-urlencode \
    "payload={\"channel\": \"$2\", \"text\": \"$(echo $LINE | sed "s/\"/'/g")\"}" "$HOOK_URL";
done
~      
