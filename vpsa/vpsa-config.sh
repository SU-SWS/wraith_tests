#!/bin/bash

for dir in $(cat vpsa-dirs.txt); do
  if [ -f $dir/configs/config.yaml ]; then
    printf '\n\nbefore_capture: "../../timeout.js"\n\n' >> $dir/configs/config.yaml
    sed -i 's/snap_file: \"..\/snap.js/snap_file: \"..\/..\/snap.js/g' $dir/configs/config.yaml
  fi
done
