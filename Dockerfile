FROM ubuntu:16.04

#ENV http_proxy 'http://your-proxy'
#ENV https_proxy 'https://your-proxy'

RUN apt-get update
RUN apt-get -y install git gcc make zlib1g-dev vim

WORKDIR /home
RUN git clone https://github.com/axboe/fio.git
WORKDIR /home/fio
RUN ./configure && make && make install

WORKDIR /home
ADD randread.fio /home

CMD fio randread.fio
#ENTRYPOINT bash
