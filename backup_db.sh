#!/bin/bash

BACKUP=/home/hadoop/db
#当前时间
DATETIME=$(date +%Y_%m_%d_%H%M%S)

echo "=====开始备份======"
#主机
HOST=localhost
#用户名
DB_USER=root
#密码
DB_PWD=123456
#要备份的数据库
DATABASE=test
#如果备份的路径文件存在就使用，否则就创建
if [ ! -d "$BACKUP/$DATETIME" ]
then mkdir -p "$BACKUP/$DATETIME"
fi

#备份数据库到临时文件
msqldump -u${DB_USER} -p ${DB_PWD} --host$HOST $DATABASE
#打包备份文件
cd $BACKUP
tar -zcvf $DATATIME.tar.gz $DATATIME
#删除临时文件
rm -rf $BACKUP/$DATATIME
#删除10天前的临时的文件
find $BACKUP -mtime +10 -name ".tar.gz" -exec rm -rf {} \;
echo "=====备份成功======"

