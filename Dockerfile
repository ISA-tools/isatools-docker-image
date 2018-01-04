FROM python:3.6-slim-stretch

MAINTAINER David Johnson ( david.johnson@oerc.ox.ac.uk )

LABEL Description="Base image for Python ISA API"
LABEL software.version="0.9.4"
LABEL version="1.0"
LABEL software="ISA API"

RUN pip install --no-cache-dir isatools==0.9.4
