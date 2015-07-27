FROM debian:jessie

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y pdns-server pdns-backend-mysql \
 && apt-get clean

ADD ./start.sh /start.sh

ENV PDNS_MYSQL_HOST=db
ENV PDNS_MYSQL_DB=
ENV PDNS_MYSQL_USER=
ENV PDNS_MYSQL_PASSWORD=
ENV PDNS_AXFR=127.0.0.1

EXPOSE 53
EXPOSE 53/udp

CMD ./start.sh
