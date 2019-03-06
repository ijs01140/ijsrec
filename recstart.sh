#!/bin/bash

script_dir=$(cd $(dirname $BASH_SOURCE); pwd)
source "$script_dir/privenv.sh"
DATESTART=`date --date "@$STARTAT"`
DATEEND=`date --date "@$ENDAT"`
POSTTEXT="*録画開始*\n番組名:$NAME\n放送時間:$DATESTART - $DATEEND"
source "$script_dir/post2slack.sh"
# post printenv result
source "$script_dir/testenv.sh"
