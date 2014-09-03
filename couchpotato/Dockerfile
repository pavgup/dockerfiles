FROM ubuntu:14.04

RUN apt-get update -qq
RUN apt-get install -qqy --no-install-recommends git-core ca-certificates python

RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git couchpotato

EXPOSE 5050/tcp

ENTRYPOINT ["/couchpotato/CouchPotato.py"]
