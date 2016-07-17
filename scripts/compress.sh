#!/bin/bash

# name: compress
# description: rewrite file without any white spaces and create <file-name>.min.css

# compress <file-name> <new-file>

SCRIPT_NAME="compress"

if [ $# -gt 0 ]; then
    IT=1
    DONE=0

    if [ ! -e "$1" ]; then
      printf "${SCRIPT_NAME} : file doesn't exists"
      exit
    fi

    sp='/-\|'
    printf ' '
    until [ $IT -gt 100 ]
    do
      printf '\b%.1s' "$sp"
      sp=${sp#?}${sp%???}
      if [ $DONE -lt 1 ]; then
        FILE=$(cat "$1")
        FILE=$(sed -e '/^\(\s*\)\/\//d' <<< $FILE)
        FILE=$(sed -e 's/^[ \t]*//g; s/[ \t]*$//g;' <<< $FILE)
        FILE=$(sed -e ':a;N;$!ba;s/\n/ /g' <<< $FILE)
        if [ $# -gt 1 ]; then
            if [ ! -e "$2" ]; then
                touch $2
            fi
            echo $FILE > $2
        else
            echo $FILE > $1
        fi
        DONE=1
      fi
      IT=`expr $IT + 1`
    done
else
    printf "${SCRIPT_NAME} : file path is needed"
fi
