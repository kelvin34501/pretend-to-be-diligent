#!/usr/bin/env bash
DATE_STR=$1
if [ -z "$DATE_STR" ]
then
      echo "\$DATE_STR is empty"
      return 1
fi

#echo $DATE_STR
touch $DATE_STR
git add .
DATE_FMT=$(date -d "$DATE_STR" +%b\ %d\ %Y)
#echo $DATE_FMT
git commit -m "$DATE_STR" --date "$DATE_FMT"

