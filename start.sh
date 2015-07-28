#!/bin/bash

SERVER_ARGS=`env|grep '^DNS_'|cut -c 5-|sed 's,_,-,g;s,^,--,'|tr "\n[:upper:]" " [:lower:]"`

pdns_server \
--daemon=no \
--master=yes \
--slave=yes \
--webserver=yes \
--disable-axfr=no \
${SERVER_ARGS}
