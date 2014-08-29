FROM ubuntu:14.04

RUN apt-get update -q
RUN apt-get install -qy --no-install-recommends python-cheetah python-pip build-essential git-core python-dev python-openssl

RUN git clone git://github.com/echel0n/SickRage.git sickrage

EXPOSE 8081/tcp

CMD ["sh", "-c", "python sickrage/SickBeard.py"]
