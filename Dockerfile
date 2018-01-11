FROM alpine:3.6

LABEL Maintainer="David Johnson ( david.johnson@oerc.ox.ac.uk )"
LABEL Contributors="Luca Pireddu ( ilveroluca )"
LABEL Description="Base image for Python ISA API"
LABEL software.version="0.9.4"
LABEL version="1.1"
LABEL software="ISA API"

RUN echo "Installing software" >&2 \
    && apk add --no-cache python3 bash \
    && apk add --no-cache --virtual isatools-build-deps ca-certificates g++ python3-dev libxml2-dev libxslt-dev \
    && pip3 install isatools==0.9.4 \
    && apk del isatools-build-deps \
    && rm -rf /var/cache/apk/* \
    && rm -rf /tmp/* /var/tmp/*
