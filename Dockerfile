FROM python:3
MAINTAINER raccoony <raccoonyy@gmail.com>

RUN \
    apt-get update &&\
    apt-get -y install \
        libpq-dev \
        python-dev

WORKDIR /app

ADD    ./manage.py                    /app/

ADD    compose/django/start-dev.sh       /start-dev.sh
RUN    chmod +x /*.sh
