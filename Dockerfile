FROM debian:jessie

ENV PDNS_VERSION 3.4.5-1

RUN apt-get update \
 && apt-get install -y wget \
 && apt-get clean

RUN wget -O pdns.deb https://downloads.powerdns.com/releases/deb/pdns-static_${PDNS_VERSION}_amd64.deb \
 && DEBIAN_FRONTEND=noninteractive dpkg -i pdns.deb \
 && rm -f pdns.deb

EXPOSE 53 53/udp 8081

ENTRYPOINT ["pdns_server", "--master=yes", "--slave=yes", "--webserver=yes"]
