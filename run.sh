#/usr/bin/env bash

# Move SSH server from Port 22 to Port 66534
sudo sed -i 's:Port 22:Port 65534:g' /etc/ssh/sshd_config
sudo service ssh reload

# Kippo
docker rm -f kippo
docker pull andrewmichaelsmith/docker-kippo
docker run --restart=always -d -p 22:2222 --name kippo andrewmichaelsmith/docker-kippo

# Dionaea
docker rm -f dionaea
docker pull andrewmichaelsmith/docker-dionaea
docker run --restart=always -d -p 21:21 -p 42:42 -p 80:80 -p 135:135 -p 443:443 -p 445:445 -p 1433:1433 -p 3306:3306 -p 5060:5060 -p 5061:5061 --name dionaea andrewmichaelsmith/docker_dionaea

