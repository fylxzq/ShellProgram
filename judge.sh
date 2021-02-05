#!/bin/bash
:<<!
if [ "ok" = "ok" ]
then 
	echo "equal"
fi
!



:<<!
if [ 25 -ge 23 ]
then echo "大于"
fi
!

if [ -e /home/hadoop/shellScript/aaa.txt ]
then echo "文件存在"
fi
