FROM alpine:3.8
MAINTAINER sysadmin@mimacom.com

LABEL Description="Docker Alpine Image v.3.8"

RUN apk update && \
    apk upgrade && \
    apk add bzip2 bash && \
    rm -rf /var/cache/apk/* && \
    adduser --shell /bin/bash -u 5000 -D user 
