FROM ubuntu:18.04

LABEL maintainer="Plumix"

RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y python3 python3-pip python3-dev

RUN pip3 install slowloris

ENTRYPOINT ["slowloris"]

CMD ["-h"]
