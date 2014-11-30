FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y git python-twisted
RUN git clone https://github.com/desaster/kippo.git /opt/kippo

ADD conf/kippo.cfg /opt/kippo/kippo.cfg
ADD bin/start.sh /opt/kippo/start.sh

RUN mkdir -p /vol/kippo/dl
RUN mkdir -p /vol/kippo/log/tty

RUN useradd kippo && echo "kippo:kippo" | chpasswd

RUN chown -R kippo:kippo /opt/kippo
RUN chown -R kippo:kippo /vol/kippo

USER kippo


CMD sh /opt/kippo/start.sh
