#/usr/bin/env bash

# Kippo

docker rm -f kippo
#docker pull andrewmichaelsmith/docker-kippo
#docker run -d --publish-all --name kippo andrewmichaelsmith/docker-kippo
docker run -d --publish-all --name kippo docker_kippo

# Dionaea
##
## Well hacky. We stick dionaea on --net host
## so it gets all the ports on the host and
## then in the image forward 22 -> Kippo Container
##
docker rm -f dionaea
#docker pull andrewmichaelsmith/docker-dionaea
#docker run -d --publish-all --name dionaea andrewmichaelsmith/docker-dionaea
docker run --link kippo:kippo --net host -d --publish-all --name dionaea docker_dionaea

