#!/bin/bash

# name: compress-css
# description: rewrite CSS without any white spaces and create <file-name>.min.css

SCRIPT_NAME="compress-css"

if [ $# -gt 0 ]; then
    it=1
    done=0

    sp='/-\|'
    printf ' '
    until [ $it -gt 100 ]
    do
      printf '\b%.1s' "$sp"
      sp=${sp#?}${sp%???}
      if [ $done -lt 1 ]; then
        FILE=$(cat "$1")
        FILE=$(sed -e '/^\(\s*\)\/\//d' <<< $FILE)
        FILE=$(sed -e 's/^[ \t]*//g; s/[ \t]*$//g;' <<< $FILE)
        FILE=$(sed -e ':a;N;$!ba;s/\n/ /g' <<< $FILE)

        done=1
      fi
      it=`expr $it + 1`
    done
else
    printf "${SCRIPT_NAME} : CSS file path is needed"
fi
