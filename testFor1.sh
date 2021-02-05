#!/bin/bash

for i in "$*"
do
   echo "the num is $i"
done

echo ---------

for j in "$@"
do
  echo "the num is $j"
done
