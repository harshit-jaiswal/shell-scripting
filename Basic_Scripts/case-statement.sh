#! /bin/bash

VAR=2
case $VAR in
    1) echo 1
    ;;
    2|3) echo 2 or 3
    ;;
    *) echo default
    ;;
esac
