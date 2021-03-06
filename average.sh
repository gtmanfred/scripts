#!/bin/bash

# Author: Andrew Howard

function average() {
  SUM=0
  COUNT=0
  while read LINE; do
    SUM=$( printf "%.3f" $(bc -l <<< "$SUM + $LINE" ) )
    COUNT=$(( COUNT + 1 ))
  done
  printf "%.3f" $(bc -l <<< "$SUM / $COUNT" )
}

