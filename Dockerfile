FROM mcth/basebian
MAINTAINER Thomas <thomas@mcth.fr>
RUN apt-get install wget unzip -y
RUN wget https://releases.hashicorp.com/consul/0.6.4/consul_0.6.4_linux_amd64.zip
RUN unzip consul_0.6.4_linux_amd64.zip
RUN mv consul /usr/bin/consul
COPY consul.conf /etc/supervisor/conf.d/consul.conf
EXPOSE 8500
