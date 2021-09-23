FROM ubuntu:latest

LABEL maintainer="hector.duran@nimbustech.mx"

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential vim

COPY . /proxy
WORKDIR /proxy

EXPOSE 80

RUN pip install -r requirements.txt
ENTRYPOINT ["./gunicorn_starter.sh"]