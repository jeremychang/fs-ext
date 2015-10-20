#!/bin/bash
START=100
END=101
#PASSWORD=ubnt

for i in `seq $START $END`
do
  echo $i:
  ./gen_extension.sh $i $PASSWORD
done
