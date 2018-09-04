# MAINTAINER oatkrittin@gmail.com
FROM ubuntu:16.04

ENV APP_HOME          /usr/local/src
ENV PATH              $APP_HOME/vt:$PATH

WORKDIR $APP_HOME

RUN apt-get update && apt-get install -y build-essential zlibc zlib1g zlib1g-dev libbz2-dev libcurl4-openssl-dev libssl-dev liblzma-dev git
RUN git clone https://github.com/atks/vt.git 
RUN cd vt && make && make test
