# collection info

the RHOSTS is `web.antgst.com`.

## use the db_nmap to scan the target

```bash
db_nmap -sV -p- web.antgst.com
```

### open ports

- 22: ssh
- 80: http
- 443: https

## web service

the first thing it use the `nginx 1.20.2` for the data transfer, and the `jeecg-boot` for the web service, which on the path `/antgst`. we can find on it font source code. not sure the version.

the `jeecg-boot` default open the `swagger` api, we can access it by `http://web.antgst.com/antgst/v2/api-docs`, which no need to login. So we can get the api info.

### version consideration

this is a table for the version consideration.

| service | version | note |
| --- | --- | --- |
| nginx | 1.20.2 | |
| jeecg-boot | ? | |
| Apache Tomcat | 8.5.51 | |

the `Apache Tomcat/8.5.51`

