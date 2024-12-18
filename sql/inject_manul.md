# test inject sql

when the code review on the github, here have some open issue about the sql inject. following is the links:

- [CVE-2022-22880](https://github.com/jeecgboot/JeecgBoot/issues/3347)

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
