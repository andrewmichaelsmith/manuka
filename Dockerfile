FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y git wget subversion python

RUN git clone https://github.com/andrewmichaelsmith/honeypot-setup-script.git

CMD bash honeypot-setup-script/setup.bash 0
