FROM pritunl/archlinux:latest

RUN pacman -Sy

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN echo "LANG=\"en_US.UTF-8\"\nLC_ALL=\"en_US.UTF-8\"\n" > /etc/locale.conf

ENV CODE_BRANCH master

RUN pacman -S --noconfirm base-devel
RUN pacman -S --noconfirm python git python-pip python-setuptools setuptools
RUN pacman -S --noconfirm postgresql

USER postgres
RUN initdb -D '/var/lib/postgres/data'

USER root

RUN mkdir /var/run/postgresql
RUN chown -R postgres:postgres /var/run/postgresql

RUN mkdir /scripts
ADD run.sh /scripts/run.sh
RUN chmod 755 /scripts/*.sh

RUN mkdir /code
ADD pg_hba.conf /etc/postgresql/9.3/main/pg_hba.conf

VOLUME ["/code"]
CMD ["/scripts/run.sh"]
