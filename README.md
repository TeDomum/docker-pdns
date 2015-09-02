# Docker PowerDNS

PowerDNS authoritative server based on Debian Jessie.

To run the server:

```
docker run --rm -i tedomum/pdns -- [pdns options]
```

For instance, connecting to a database server:

```
docker run -d --name=dns
-t tedomum/pdns
--launch=gmysql
--local-ipv6=::
--gmysql-host=mariadb
--gmysql-user=pdns
--gmysql-password=pdns
--gmysql-dbname=pdns
```
