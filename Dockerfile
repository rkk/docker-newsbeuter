FROM ubuntu:latest

RUN \
  groupadd newsbeuter && \
  useradd newsbeuter -g newsbeuter -d /home/newsbeuter && \
  mkdir -p /home/newsbeuter && \
  mkdir -p /home/newsbeuter/.config && \
  chown -R newsbeuter:newsbeuter /home/newsbeuter

RUN \
  apt-get update \
  && apt-get install -y \
    newsbeuter \
    w3m

ENV HOME /home/newsbeuter
USER newsbeuter
WORKDIR ${HOME}

ENTRYPOINT ["/usr/bin/newsbeuter"]
