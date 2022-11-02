# 停止nginx服务
nginx -c $PWD/nginx1.conf -s stop
# 删除指定端口的进程
kill -9 $(lsof -i:3100|awk 'NR>1{print $2}')
kill -9 $(lsof -i:3200|awk 'NR>1{print $2}')
# 删除日志文件
rm ./site1/nohup.out
rm ./site2/nohup.out