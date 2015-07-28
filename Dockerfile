FROM debian:jessie

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y pdns-server pdns-backend-mysql \
 && apt-get clean

ADD ./start.sh /start.sh

ENV DNS_GMYSQL_HOST=db

EXPOSE 53 53/udp 5380

CMD ./start.sh
