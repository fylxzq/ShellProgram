
#!/bin/bash

num=$1
if [ $num -ge 60 ]
then echo "及格了"
elif [ $num -lt 60 ]
then echo "不及格"
fi
