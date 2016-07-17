#!/bin/bash

# name: clean
# description: clean files and folders

# clean [<file-or-dir-path>]

SCRIPT_NAME="clean"

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
           for ITEM in "$@"
           do
               if [[ -d $ITEM ]]; then
                   rm -rf "$ITEM"
               elif [[ -f $ITEM ]]; then
                   rm "$ITEM"
               fi
           done
           DONE=1
       fi
       IT=`expr $IT + 1`
    done
else
    printf "${SCRIPT_NAME} : path is needed"
fi

