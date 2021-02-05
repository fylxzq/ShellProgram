#!/bin/bash
function getsum(){
     SUM=$[$n1+$n2]
     echo "SUM=$SUM"
}

read -p "请输入第一个数：" n1
read -p "请输入第二个数: " n2

getsum $n1 $n2
