FROM php:7.4-cli
MAINTAINER ICEcoder <info@icecoder.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
apt-get install sudo  unzip -y && \
apt-get install -y build-essential git && \
apt-get clean all && \
git clone https://github.com/icecoder/ICEcoder.git /tmp/  \
addgroup -g 998 -S docker
WORKDIR /tmp
CMD [ "php","-S","0.0.0.0:8080" ]
