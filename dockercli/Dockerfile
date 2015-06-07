FROM ubuntu:14.04

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ENV CODE_BRANCH master

RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python python-dev git
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python-setuptools
RUN DEBIAN_FRONTEND=noninteractive easy_install pip

RUN mkdir /scripts
ADD run.sh /scripts/run.sh
RUN chmod 755 /scripts/*.sh

RUN mkdir /code

VOLUME ["/code"]
CMD ["/scripts/run.sh"]