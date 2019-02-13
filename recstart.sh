#!/bin/bash

source privenv.sh
DATESTART=`date --date "@$STARTAT"`
DATEEND=`date --date "@$ENDAT"`
POSTTEXT="*録画開始*\n番組名:$NAME\n開始:$DATESTART"
curl -X POST -H 'Content-type: application/json' --data "{\"text\":\"$POSTTEXT\"}" $SLACKURL