FROM ubuntu:14.04

RUN apt-get update -qq
RUN apt-get install -qqy --no-install-recommends transmission-daemon

EXPOSE 9091/tcp 51413/udp

ENTRYPOINT ["transmission-daemon", "-f"]
