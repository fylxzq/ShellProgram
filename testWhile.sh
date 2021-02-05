#! /bin/bash
SUM=0
i=0
while [ $i -le $1 ]
do 
    SUM=$[($SUM+$i)]
    i=$[($i+1)]
done
echo "SUM=$SUM"
