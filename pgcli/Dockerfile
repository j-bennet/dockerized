FROM ubuntu:14.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
RUN dpkg-reconfigure locales

RUN echo "LANG=\"en_US.UTF-8\"\nLC_ALL=\"en_US.UTF-8\"\n" >> /etc/environment

ENV CODE_BRANCH master

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python python-dev git
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python-setuptools
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install postgresql postgresql-contrib libpq-dev
RUN DEBIAN_FRONTEND=noninteractive easy_install pip

RUN mkdir /scripts
ADD run.sh /scripts/run.sh
RUN chmod 755 /scripts/*.sh

RUN mkdir /code
ADD pg_hba.conf /etc/postgresql/9.3/main/pg_hba.conf

VOLUME ["/code"]
CMD ["/scripts/run.sh"]