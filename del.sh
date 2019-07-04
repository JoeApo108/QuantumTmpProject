#!/bin/bash

find ~/.kodi/userdata/addon_data/plugin.video.sosac.ph/TVShows/* -type d -print | while read f; do

n=`basename "$f"`
d=`expr "X$n" : 'X.*\([\(][0-9]\{4\}[\)]\)'`

#a=$(echo $d | grep -E --only-matching '[[:digit:]]+')

if [ "$d"  "<" "(2014)" ]; then
	echo "$d" "$f" && rm -rf "$f"
fi

done
