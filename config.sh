#! /bin/bash
echo "Config virtual memory to support elasticache"
sudo -s
sysctl -w vm.max_map_count=262144
echo "vm.max_map_count=262144 has been setted"
sysctl -w fs.file-max=65536
echo "fs.file-max=65536 has been setted"
ulimit -n 65536
ulimit -u 4096
echo "ulimit has been configured"
echo "Host configured, lets start!!"
docker-compose up -d --force-recreate

echo "Done!"
exit 0
