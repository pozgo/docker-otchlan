FROM alpine:3.1
MAINTAINER Przemyslaw Ozgo <linux@ozgo.info>

ENV VERSION=1.3.v76

RUN \
  apk add --update curl bash && \
  rm -rf /var/cache/apk/* && \
  curl -o /tmp/otchlan.tgz http://www.otchlan.pl/otchlan_beta_v7x/otchlan.${VERSION}.i386.tar.gz && \
  tar zxvf /tmp/otchlan.tgz -C /tmp && \
  rm -f /tmp/otchlan.tgz && \
  mv /tmp/otchlan.${VERSION} /otchlan && \
  mkdir -p /root/.config && \
  chmod 777 -R /otchlan/zapisy /root/.config

COPY container-files /

CMD ["./start.sh"]
