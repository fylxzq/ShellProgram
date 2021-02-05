#!/bin/bash

echo "当前进程号=$$"
#后台的方式运行myshell.sh
./myshell.sh &#&符号表示后台运行此程序
echo "最后的进程号=$!"
echo "执行的状态=$?"
