FROM alpine:3.5

MAINTAINER Fabio Todaro <fabio.todaro@crweb.it>

ENV HELM_VERSION v2.2.1
ENV FILENAME helm-${HELM_VERSION}-linux-amd64.tar.gz

WORKDIR /

ADD https://storage.googleapis.com/kubernetes-helm/${FILENAME} /tmp

RUN tar -zxvf /tmp/${FILENAME} -C /tmp \
  && mv /tmp/linux-amd64/helm /bin/helm \
  && rm -rf /tmp
