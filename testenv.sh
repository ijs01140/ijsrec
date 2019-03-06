#!/bin/bash

testenv=`printenv`
POSTTEXT="testenv\n$testenv"
source "$script_dir/post2slack.sh"
