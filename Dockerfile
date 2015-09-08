FROM centos:centos7
MAINTAINER Przemyslaw Ozgo <linux@ozgo.info>

ENV VERSION=1.3.v72

COPY container-files/start.sh /start.sh

RUN \
  curl -o /tmp/otchlan.tgz http://www.otchlan.pl/otchlan_beta_v7x/otchlan.${VERSION}.i386.tar.gz && \
  mkdir -p /otchlan && \
  tar zxvf /tmp/otchlan.tgz -C /otchlan --strip-components 1 && \
  rm -f /tmp/otchlan.tgz

CMD ["./start.sh"]
