#!/usr/bin/bash

# name: compress-css
# description: rewrite CSS without any white spaces and create <file-name>.min.css

SCRIPT_NAME="compress-css"

if [ $# -gt 0 ]; then
    echo $1
    echo $(cat $1 | tr -d " \t\n\r")

else
    printf "${SCRIPT_NAME} : CSS file path is needed"
fi
