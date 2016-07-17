#!/bin/bash

# name: compress
# description: rewrite file without any white spaces and create <file-name>.min.css

SCRIPT_NAME="compress"

if [ $# -gt 0 ]; then
    IT=1
    DONE=0

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

        DONE=1
      fi
      IT=`expr $IT + 1`
    done
else
    printf "${SCRIPT_NAME} : file path is needed"
fi
