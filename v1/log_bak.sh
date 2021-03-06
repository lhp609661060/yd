#!/bin/sh
ip=`ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d "addr:"​`

cd /home/webuser/log/service

zip_file="$ip.$(date +%Y%m%d).zip *.log.*"

echo $(date +%F%n%T) "开始压缩日志:" $zip_file
zip $ip.$(date +%Y%m%d).zip *.log.*
echo $(date +%F%n%T) "开始备份到远程服务器"
sshpass -p "Sgcrm.RootZaq!2wsx" scp -P 10022 $ip.$(date +%Y%m%d).zip root@10.1.239.127:/root/service-log/
echo $(date +%F%n%T) "开始移除当前目录下已备份的文件"
rm -rf $ip.$(date +%Y%m%d).zip
rm -rf *.log.*
