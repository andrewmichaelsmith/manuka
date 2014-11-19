FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y git wget subversion python-pip gcc python-dev p0f software-properties-common subversion python-dev openssl python-openssl python-pyasn1 python-twisted iptables


RUN add-apt-repository -y ppa:honeynet/nightly
RUN apt-get update
RUN apt-get install -y dionaea-phibo

RUN pip install netifaces

ADD honeypot-setup-script /honeypot-setup-script

CMD bash honeypot-setup-script/setup.bash 1
