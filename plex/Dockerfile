FROM ubuntu:14.04

RUN apt-get update -qq
RUN apt-get install -qy --force-yes --no-install-recommends avahi-daemon avahi-utils wget

RUN wget http://downloads.plexapp.com/plex-media-server/0.9.9.14.531-7eef8c6/plexmediaserver_0.9.9.14.531-7eef8c6_amd64.deb
RUN dpkg -i plexmediaserver_0.9.9.14.531-7eef8c6_amd64.deb

ENV HOME /root

EXPOSE 32400/tcp 32400/udp

CMD ["/usr/sbin/start_pms", "plex"]

