## -*- docker-image-name: "oysteinovrebo/simple-ftp-server" -*-

FROM python:slim
MAINTAINER Øystein <oystein.ovrebo@bouvet.no>

ENV FTP_ROOT /ftp-home
ENV FTP_USER ftp
ENV FTP_PASS ftp
ENV FTP_PORT 21

ADD image/root/ /

RUN pip install pyftpdlib && \
    mkdir -pv $FTP_ROOT

EXPOSE $FTP_PORT

ENTRYPOINT /bin/simple-ftp-server
