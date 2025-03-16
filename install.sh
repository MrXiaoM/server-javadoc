#!/bin/bash

if [ $# == 0 ]; then
  EXPORT_DIR="./out"
else 
  EXPORT_DIR="$*"
fi
echo "output dir: $EXPORT_DIR"

for file in ./spigot/*.zip; do
  if [ -f "$file" ]; then
    version=$(basename "${file%.*}")
    output="$EXPORT_DIR/spigot/$version"
    mkdir -p $output
    echo "unzip $file -> $output"
    unzip -q $file -d $output
  fi
done

for file in ./paper/*.zip; do
  if [ -f "$file" ]; then
    version=$(basename "${file%.*}")
    output="$EXPORT_DIR/paper/$version"
    mkdir -p $output
    echo "unzip $file -> $output"
    unzip -q $file -d $output
  fi
done
