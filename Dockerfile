FROM ubuntu

RUN apt-get update

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get upgrade
RUN apt-get -y install vim
RUN apt-get -y install apache2
RUN apt-get -y install php libapache2-mod-php
RUN service apache2 start

EXPOSE 80