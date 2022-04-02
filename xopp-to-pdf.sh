#!/bin/bash

DIR="${PWD}/src/"

if [[ -d "$DIR" ]] 
then
  cd "${PWD}/src/"
else 
  echo "src folder not found"
  exit 1
fi

for file in *.xopp ; do
  echo Processing $file
  xournalpp -p ../"${file%.*}".pdf $file
done