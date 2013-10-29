FROM ubuntu:12.04

MAINTAINER Victor Vieux <victor@vvieux.com>

RUN echo 'deb http://archive.ubuntu.com/ubuntu precise main universe' > /etc/apt/sources.list
RUN apt-get update && apt-get upgrade -y && apt-get clean

RUN apt-get install -y python-dev 
RUN apt-get install -y python-pip
RUN apt-get clean

RUN pip install rq-dashboard

ADD https://raw.github.com/vieux/dockerfiles/master/links/links.sh /links.sh
RUN chmod +x /links.sh

CMD rq-dashboard -H `/links.sh addr redis`