FROM selenium/standalone-chrome:89.0
LABEL MAINTAINER="ritadcalves"
USER root

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -

RUN apt-get update -y && \
    apt-get -y --no-install-recommends install nodejs \
    python3 python3-pip python3-venv python3-setuptools jq git && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 --no-cache-dir install awscli
