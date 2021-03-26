#!/bin/bash
echo "fakap mp3-to-flv converter http://blog.fakap.net/mp3toflv/"
echo "Copyright (c) mypapit 2007"
echo ""
if (($# ==0))
then
    echo "Usage: flvto3gp [flv files] ..."
    exit
fi

echo $#
while (($# !=0 ))
do
	echo "$1"
        ffmpeg -i $1 -s 176x144 -vcodec h263 -r 28 -b 96k -ab 64 -acodec libfaac -ac 1 -ar 44100 $1.3gp
    shift
done
echo "Finished fakaping with flv-to-3gp converter"
echo "\"fakap all those nonsense!\""
echo ""
