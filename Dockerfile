FROM ubuntu:14.04

#@see https://bitbucket.org/devries/docker-dnsmasq/src/4dbcadd00346fea10cace0ac4278dcd4a0b6bbe4/Dockerfile?fileviewer=file-view-default
MAINTAINER Christopher De Vries <devries@idolstarastronomer.com>

COPY ./hosts /etc/althosts
RUN apt-get update && apt-get install -y dnsmasq dnsutils && apt-get clean

RUN echo "addn-hosts=/etc/althosts" >> /etc/dnsmasq.conf
RUN echo "user=root" >> /etc/dnsmasq.conf
RUN echo "domain=dns.toomao.com" >> /etc/dnsmasq.conf

#RUN echo "nameserver 223.5.5.5" >> /etc/dnsmasq.conf
#RUN echo "nameserver 223.6.6.6" >> /etc/dnsmasq.conf
#RUN echo "nameserver 8.8.8.8" >> /etc/dnsmasq.conf

RUN echo "server=223.5.5.5" >> /etc/dnsmasq.conf
RUN echo "server=223.6.6.6" >> /etc/dnsmasq.conf
RUN echo "server=114.114.114.114" >> /etc/dnsmasq.conf
RUN echo "server=8.8.8.8" >> /etc/dnsmasq.conf

EXPOSE 53

CMD ["/usr/sbin/dnsmasq","-d"]
