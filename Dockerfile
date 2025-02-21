from ubuntu/squid:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt update -y && apt install -y apache2-utils
