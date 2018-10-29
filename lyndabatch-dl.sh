#!/bin/bash
#Lynda Downloader Script for youtube-dl
#Version 0.05

#You must Fill in the login information before starting
#copy to /usr/bin to use anywhere
#you must have youtube-dl installed to use

#Login Area
username=""
password=""
rate=4M
#Login Area

if [ $# -eq 0 ]
  then
    echo "Please supply the the Filename for the playlist-list"
    exit 1
fi

cat $1 | while read line
do
echo $line
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @ using stored credentials to download lynda course @
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
youtube-dl -u $username -p $password -o ""%"("playlist_title")"s-%"("playlist_index")"s-%"("title")"s.%"("ext")"s"" --add-metadata --limit-rate $rate $line
done
echo @@@@@@@@@@@@@@@@@@@@@@@@
echo @ !Download Completed! @
echo @@@@@@@@@@@@@@@@@@@@@@@@
exit 0 
