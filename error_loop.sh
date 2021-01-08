#!/bin/bash

while :
  ./error_laden_script.sh > error_loop_normal_output.txt 2> error_loop_errors.txt
  if [ $? -ne 0 ]; then
    echo "command1 borked it"
  fi
done || exit 1
