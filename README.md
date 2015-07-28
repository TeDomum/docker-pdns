# Docker PowerDNS-MySQL

PowerDNS configured with MySQL backend based on Debian Jessie.

To run the server:

```
docker run --rm -i --link mysql:db kaiyou/pdns-mysql
```

You may specify arbitrary PowerDNS arguments using environment :

```
docker run --rm -i \
 --link mysql:db \
 -e DNS_MASTER=no \
 -e DNS_RECURSOR=8.8.8.8 \
 -t kaiyou/pdns-mysql
```

The default configuration includes :

```
daemon=no
master=yes
slave=yes
webserver=yes
disable-axfr=no
```
