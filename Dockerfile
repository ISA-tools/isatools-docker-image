FROM alpine:3.6

LABEL Maintainer="David Johnson ( david.johnson@oerc.ox.ac.uk )"
LABEL Contributors="Luca Pireddu ( ilveroluca )"
LABEL Description="Base image for Python ISA API"
LABEL software.version="0.9.4"
LABEL version="1.1"
LABEL software="ISA API"

RUN echo "Installing software" >&2
RUN apk add --no-cache \
                bash \
                libxslt \
                python3

RUN apk add --no-cache --virtual isatools-build-deps \
            ca-certificates \
            g++ \
            libxml2-dev \
            libxslt-dev \
            python3-dev  \
    && pip3 install isatools==0.9.4 \
    && apk del isatools-build-deps \
    && rm -rf /root/.cache # pip's cache
