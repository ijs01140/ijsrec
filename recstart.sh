#!/bin/bash

script_dir=$(cd $(dirname $BASH_SOURCE); pwd)
source "$script_dir/privenv.sh"
#convert unixtime[ms] to unixtime[s]
STARTATSEC=$(($STARTAT/1000))
ENDATSEC=$(($ENDAT/1000))
#convert unixtime to date
DATESTART=`date --date "@$STARTATSEC"`
DATEEND=`date --date "@$ENDATSEC"`
#post to slack
POSTTEXT="*録画開始*\n番組名:$NAME\n放送時間:$DATESTART - $DATEEND"
source "$script_dir/post2slack.sh"
