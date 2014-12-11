#/usr/bin/env bash

# Kippo

docker rm -f kippo
#docker pull andrewmichaelsmith/docker-kippo
#docker run -d --publish-all --name kippo andrewmichaelsmith/docker-kippo
docker run -d -p 22:2222 --name kippo docker_kippo

# Dionaea
##
## Well hacky. We stick dionaea on --net host
## so it gets all the ports on the host and
## then in the image forward 22 -> Kippo Container
##
docker rm -f dionaea
#docker pull andrewmichaelsmith/docker-dionaea
#docker run -d --publish-all --name dionaea andrewmichaelsmith/docker-dionaea
docker run -d -p 21:21 -p 42:42 -p 80:80 -p 135:135 -p 443:443 -p 445:445 -p 1433:1433 -p 3306:3306 -p 5060:5060 -p 5061:5061 --name dionaea docker_dionaea

