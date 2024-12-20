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
| jeecg-boot | 2.0.2 | |
| Jackson | 2.9.8 | deserialization |
| Logback | 1.2.3 | |
| Apache Tomcat | 8.5.51 | |

the `Apache Tomcat/8.5.51` is depended by the `Spring Boot`, so how to get the version of `Spring Boot`? Since you mentioned Tomcat 8.5.51, the likely Spring Boot version would be `2.1.x`. So the `jeecg-boot` version is <= `2.3.x`. by the project is start from `2019`, so the version is `v2.0.2` for our guess.

so we review the code on [vscode online link](https://github.dev/jeecgboot/JeecgBoot/tree/v2.0.2).

## Spring Boot exploit

the version is `2.1.3.RELEASE`. the spring framework version is `5.1.5.RELEASE`.

### spring boot actuator

version is `5.1.3`, so we can use the `Spring Boot Actuator` to get the info. following is the configuration.

```yml
management:
 endpoints:
  web:
   exposure:
    include: metrics,httptrace
```

FIXME: the `/actuator/metrics` and `/actuator/httptrace` is not authorized.

by the `actuator/httptrace` can stole other user's `x-access-token`. then use the token to request by the other user.

### Fastjson 1.2.56

we try the fastjson 1.2.47 RCE, but failed. so we try the `1.2.56` version.su


### 