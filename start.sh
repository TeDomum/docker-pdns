#!/bin/bash

pdns_server \
--daemon=no \
--master=yes \
--slave=yes \
--webserver=yes \
--disable-axfr=no \
--allow-axfr-ips=${PDNS_AXFR} \
--gmysql-host=db \
--gmysql-dbname=${PDNS_MYSQL_DB} \
--gmysql-user=${PDNS_MYSQL_USER} \
--gmysql-password=${PDNS_MYSQL_PASSWORD}
