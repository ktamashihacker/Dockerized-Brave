FROM ubuntu:24.04

LABEL maintainer= William .
RUN apt

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y x11vnc curl sudo xvfb && \
    mkdir ~/.vnc && \
    touch ~/.vnc/passwd

RUN x11vnc -storepasswd "devopsil" ~/.vnc/passwd

RUN 

RUN sh -c 'echo "brave-browser" >> ~/.bashrc'

CMD ["/usr/bin/x11vnc", "-usepw", "-create"]
