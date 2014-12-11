manuka - a honeypot setup script
======

A script to run a [dionaea docker image](https://registry.hub.docker.com/u/andrewmichaelsmith/docker-dionaea/) and [kippo docker image](https://registry.hub.docker.com/u/andrewmichaelsmith/docker-kippo).

Supposed to be the next iteration of the [honeypot setup script](https://github.com/andrewmichaelsmith/honeypot-setup-script/) it sticks all the dependencies in the Docker images which should make it more compatible across operating systems.

setup
======
```
# ! This will move SSH from port 22 to 65535
#
# Make sure Docker is installed
#
wget https://raw.githubusercontent.com/andrewmichaelsmith/manuka/master/run.sh
./run.sh
```
