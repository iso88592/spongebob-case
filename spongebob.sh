#!/bin/bash
txt=$(zenity --text='Text to spongebob-case:' --entry)
if [[ $? -ne 0 ]]; then
  exit 0
fi
length=${#txt}
resut=""
for ((i = 0; i < length; i++)); do
  char="${txt:i:1}"
  if ((i % 2 == 1)); then
    char=${char^^}
  else
    char=${char,,}
  fi
  result="${result}${char}"
done
if [[ $1 == "--clipboard" ]]; then
  echo -n "${result}" | xclip -selection clipboard
else
  xdotool type "${result}"
fi