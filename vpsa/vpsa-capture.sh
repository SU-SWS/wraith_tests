#!/bin/bash

cwd=$(pwd)
for dir in $(cat vpsa-dirs.txt); do
  if [ -f $dir/configs/config.yaml ]; then
    echo "Starting $dir"
    cd $dir
    wraith capture config
    cd $cwd
  fi
done
