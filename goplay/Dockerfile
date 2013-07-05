# GoPlay, A Tour of Go

# VERSION 0.1
# DOCKER-VERSION 0.4.8

FROM base:ubuntu-12.10
MAINTAINER Victor Vieux <victor@vvieux.com>

RUN apt-get update
RUN apt-get install mercurial build-essential -y
RUN hg clone -u release https://code.google.com/p/go
RUN cd go/src && ./make.bash
RUN ln -s /go/bin/go /bin/go
CMD go run go/misc/goplay/goplay.go -http="0.0.0.0:3999"
EXPOSE 8080:3999
