# Docker PowerDNS-MySQL

PowerDNS configured with MySQL backend based on Debian Jessie.

To run the server:

```
docker run --rm -i kaiyou/pdns-mysql
```

You may specify arbitrary PowerDNS arguments using environment :

```
docker run --rm -i \
 -e DNS_MASTER=no \
 -e DNS_RECURSOR=8.8.8.8 \
 -t kaiyou/pdns-mysql
```
