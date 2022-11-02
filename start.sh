!#/bin/bash
cd $PWD/site1
nohup http-server  --port 3110 &
cd ../site2
nohup http-server  --port 3120 &
cd ..
nginx -c $PWD/nginx1.conf 