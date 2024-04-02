#!/bin/bash
if [[ $1 == "--date" ]]; then
   date
fi

if [[ $1 == "--logs" && $2 -ge 1 && $2 -le 30 ]]; then
  for ((i=1; i<=$2; i++)); do
    filename="log${i}.txt"
    echo "Filename: $filename" > $filename
    echo "Script: $0" >> $filename
    echo "Creation date: $(date)" >> $filename
  done
elif [[ $1 == "--logs" ]]; then
  for ((i=1; i<=100; i++)); do
    filename="log${i}.txt"
    echo "Filename: $filename" > $filename
    echo "Script: $0" >> $filename
    echo "Creation date: $(date)" >> $filename
  done
fi
