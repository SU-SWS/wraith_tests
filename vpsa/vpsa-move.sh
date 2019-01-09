#!/bin/bash

for dir in $(cat vpsa-dirs.txt); do
  if [ -d $dir ]; then
    mv $dir vpsa/
  fi
done
