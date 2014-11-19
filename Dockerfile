FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y git wget subversion python-pip gcc python-dev p0f python-software-properties subversion python-dev openssl python-openssl python-pyasn1 python-twisted iptables


RUN apt-get update
RUN add-apt-repository -y ppa:honeynet/nightly
RUN apt-get install dionaea-phibo

RUN pip install netifaces

RUN git clone https://github.com/andrewmichaelsmith/honeypot-setup-script.git

CMD bash honeypot-setup-script/setup.bash 0
