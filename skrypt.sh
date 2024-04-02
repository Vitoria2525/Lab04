#!/bin/bash
if [[ $1 == "--date" || $1 == "-d" ]]; then
   date
fi

if [[ ($1 == "--logs" || $1 == "-l") && ($2 -ge 1 && $2 -le 30) ]]; then
  for ((i=1; i<=$2; i++)); do
    filename="log${i}.txt"
    echo "Filename: $filename" > $filename
    echo "Script: $0" >> $filename
    echo "Creation date: $(date)" >> $filename
  done
elif [[ $1 == "--logs" || $1 == "-l" ]]; then
  for ((i=1; i<=100; i++)); do
    filename="log${i}.txt"
    echo "Filename: $filename" > $filename
    echo "Script: $0" >> $filename
    echo "Creation date: $(date)" >> $filename
  done
fi

if [[ $1 == "--help" ]]; then
    echo "Options:"
    echo "  --date, -d: Display current date"
    echo "  --logs, -l: Create 100 log files"
    echo "  --logs n, -l n: Create n log files"
    echo "  --help, -h: Display this help message"
    echo "  --error, -e: Create error files"
    echo "  --error n, -e n: Create n error files"
    echo "  --init: Clone the repository"
   exit 0
fi

if [[ $1 == "--init" ]]; then
  git clone https://github.com/Vitoria2525/Lab04.git
  export PATH=$PATH:$(pwd)/Lab4
  echo "Repository cloned"
fi


if [[ ($1 == "--error" || $1 == "-e") && ($2 -ge 1 && $2 -le 30) ]]; then
  for ((i=1; i<=$2; i++)); do
    filename="error${i}.txt"
    echo "Filename: $filename" > $filename
    echo "Script: $0" >> $filename
    echo "Creation date: $(date)" >> $filename
  done
elif [[ $1 == "--error" || $1 == "-e" ]]; then
  for ((i=1; i<=100; i++)); do
    filename="error${i}.txt"
    echo "Filename: $filename" > $filename
    echo "Script: $0" >> $filename
    echo "Creation date: $(date)" >> $filename
  done
fi
