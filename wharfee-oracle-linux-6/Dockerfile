FROM oraclelinux:6

RUN yum update
RUN yum install -y python python-dev python-setuptools git

ENV SKIP_INSTALL N

RUN mkdir /scripts
ADD run.sh /scripts/run.sh
RUN chmod 755 /scripts/*.sh

CMD ["/scripts/run.sh"]
