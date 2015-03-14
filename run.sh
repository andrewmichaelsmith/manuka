#/usr/bin/env bash
DIR=$(cd $(dirname "$0"); pwd)
KIPPO_UID=499:499
DIONAEA_UID=nobody:nogroup

# Move SSH server from Port 22 to Port 66534
echo "Moving SSH server to port 65534"
sudo sed -i 's:Port 22:Port 65534:g' /etc/ssh/sshd_config
sudo service ssh reload

# Directory setup
echo "Putting files in $DIR"
mkdir -p $DIR/var/kippo $DIR/var/dionaea

#Dionaea's directories
mkdir -p $DIR/var/dionaea/wwwroot
mkdir -p $DIR/var/dionaea/binaries
mkdir -p $DIR/var/dionaea/log
mkdir -p $DIR/var/dionaea/bistreams

sudo chown $KIPPO_UID $DIR/var/kippo 
sudo chown -R $DIONAEA_UID $DIR/var/dionaea

sudo docker-compose up -d

## Kippo
#docker rm -f kippo
##docker pull andrewmichaelsmith/kippo
#docker run --restart=always \
#	-v `pwd`/var/kippo:/vol/kippo/ \
#	-w /vol/kippo \
#	-d \
#	-p 22:2222 \
#	--name kippo \
#	andrewmichaelsmith/kippo:latest
#
## Dionaea
#docker rm -f dionaea
##docker pull andrewmichaelsmith/dionaea
#docker run --restart=always \
#	-v `pwd`/var/dionaea:/vol/dionaea \
#	-d \
#	--name dionaea \
#	-p 21:21 \
#	-p 42:42 \
#	-p 80:80 \
#	-p 135:135 \
#	-p 443:443 \
#	-p 445:445 \
#	-p 1433:1433 \
#	-p 3306:3306 \
#	-p 5060:5060 \
#	-p 5061:5061 \
#	-p 69:69/udp \
#	-p 5060:5060/udp \
#	andrewmichaelsmith/dionaea:latest

echo "Done, files in `pwd`/var"
