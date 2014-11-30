FROM ubuntu:14.04

RUN apt-get update
#RUN apt-get install -y python-software-properties
RUN apt-get install -y software-properties-common


RUN add-apt-repository -y ppa:honeynet/nightly
RUN apt-get update
RUN apt-get install -y dionaea-phibo

ADD conf/dionaea.conf /etc/dionaea/dionaea.conf

RUN mkdir -p /vol/dionaea/wwwroot
RUN mkdir -p /vol/dionaea/binaries
RUN mkdir -p /vol/dionaea/log
RUN mkdir -p /vol/dionaea/bistreams

RUN chown -R nobody:nogroup /vol/dionaea

CMD dionaea -c /etc/dionaea/dionaea.conf -w /vol/dionaea -u nobody -g nogroup
