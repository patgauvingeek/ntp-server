FROM ubuntu:latest

ARG TZ="America/Toronto"

RUN apt-get update && apt-get upgrade -y
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y ntp

RUN mkdir /config && touch /config/ntp.keys
RUN ln -s /config/ntp.keys /etc/ntp.keys
COPY ntp.conf /etc/ntp.conf

COPY entrypoint.sh /opt/entrypoint.sh

EXPOSE 123/udp

ENTRYPOINT ["/bin/sh", "/opt/entrypoint.sh"]

