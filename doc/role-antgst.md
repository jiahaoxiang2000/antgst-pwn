---
title: testing-antgst
language_tabs:
  - shell: Shell
  - http: HTTP
  - javascript: JavaScript
  - ruby: Ruby
  - python: Python
  - php: PHP
  - java: Java
  - go: Go
toc_footers: []
includes: []
search: true
code_clipboard: true
highlight_theme: darkula
headingLevel: 2
generator: "@tarslib/widdershins v4.0.23"

---

# testing-antgst

Base URLs:

# Authentication

# sys-user-controller

<a id="opIdqueryUserRoleUsingGET_1"></a>

## GET queryUserRole

GET /sys/user/queryUserRole

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|userid|query|string| 是 |userid|
|X-Access-Token|header|string| 否 |none|

> 返回示例

> 200 Response

```json
{
  "code": 0,
  "message": "string",
  "result": [
    "string"
  ],
  "success": true,
  "timestamp": 0
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|none|Inline|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|none|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|none|Inline|

### 返回数据结构

<a id="opIdaddSysUserRoleUsingPOST"></a>

## POST addSysUserRole

POST /sys/user/addSysUserRole

> Body 请求参数

```json
{
  "roleId": "string",
  "userIdList": [
    "string"
  ]
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|X-Access-Token|header|string| 否 |none|
|body|body|[SysUserRoleVO](#schemasysuserrolevo)| 否 |none|

> 返回示例

> 200 Response

```json
{
  "code": 0,
  "message": "string",
  "result": "string",
  "success": true,
  "timestamp": 0
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|none|Inline|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|none|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|none|Inline|

### 返回数据结构

<a id="opIdgetUserRoleUsingGET"></a>

## GET getUserRole

GET /sys/user/isCommonUser

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|X-Access-Token|header|string| 否 |none|

> 返回示例

> 200 Response

```json
{
  "code": 0,
  "message": "string",
  "result": {},
  "success": true,
  "timestamp": 0
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|none|Inline|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|none|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|none|Inline|

### 返回数据结构

<a id="opIddeleteUserRoleUsingDELETE"></a>

## DELETE deleteUserRole

DELETE /sys/user/deleteUserRole

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|roleId|query|string| 是 |roleId|
|userId|query|string| 是 |userId|
|X-Access-Token|header|string| 否 |none|

> 返回示例

> 200 Response

```json
{
  "code": 0,
  "message": "string",
  "result": {
    "id": "string",
    "roleId": "string",
    "userId": "string"
  },
  "success": true,
  "timestamp": 0
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|none|Inline|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|none|Inline|

### 返回数据结构

<a id="opIdqueryUserRoleUsingGET"></a>

## GET queryUserRole

GET /sys/user/queryUserRoleMap

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|X-Access-Token|header|string| 否 |none|

> 返回示例

> 200 Response

```json
{
  "code": 0,
  "message": "string",
  "result": {
    "property1": "string",
    "property2": "string"
  },
  "success": true,
  "timestamp": 0
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|none|Inline|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|none|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|none|Inline|

### 返回数据结构

<a id="opIdqueryCountryByRoleUsingGET"></a>

## GET queryCountryByRole

GET /sys/user/queryUserCountryByRole

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|userid|query|string| 是 |userid|
|X-Access-Token|header|string| 否 |none|

> 返回示例

> 200 Response

```json
{
  "code": 0,
  "message": "string",
  "result": [
    {
      "addTime": "2019-08-24T14:15:22Z",
      "code": "string",
      "currency": "string",
      "englishName": "string",
      "id": 0,
      "name": "string",
      "shortName": "string",
      "timezone": "string"
    }
  ],
  "success": true,
  "timestamp": 0
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|none|Inline|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|none|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|none|Inline|

### 返回数据结构

<a id="opIduserRoleListUsingGET"></a>

## GET userRoleList

GET /sys/user/userRoleList

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|pageNo|query|integer(int32)| 否 |pageNo|
|pageSize|query|integer(int32)| 否 |pageSize|
|X-Access-Token|header|string| 否 |none|

> 返回示例

> 200 Response

```json
{
  "code": 0,
  "message": "string",
  "result": {
    "current": 0,
    "pages": 0,
    "records": [
      {
        "accountType": 0,
        "activitiSync": "string",
        "agentId": "string",
        "avatar": "string",
        "birthday": "2019-08-24T14:15:22Z",
        "brandName": "string",
        "changeTime": "2019-08-24T14:15:22Z",
        "countryCode": "string",
        "createBy": "string",
        "createTime": "2019-08-24T14:15:22Z",
        "delFlag": "string",
        "departId": "string",
        "departName": "string",
        "drTimeout": 0,
        "email": "string",
        "googleBind": 0,
        "googleKey": "string",
        "id": "string",
        "ipWhite": "string",
        "isAdmin": "string",
        "isAgent": "string",
        "notes": "string",
        "orgCode": "string",
        "password": "string",
        "phone": "string",
        "platformDomain": "string",
        "platformLogo": "string",
        "post": "string",
        "realname": "string",
        "salt": "string",
        "sex": 0,
        "status": 0,
        "superAdmin": "string",
        "telephone": "string",
        "updateBy": "string",
        "updateTime": "2019-08-24T14:15:22Z",
        "username": "string",
        "vaild": "string",
        "workNo": "string"
      }
    ],
    "searchCount": true,
    "size": 0,
    "total": 0
  },
  "success": true,
  "timestamp": 0
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|none|Inline|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|none|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|none|Inline|

### 返回数据结构

<a id="opIddeleteUserRoleBatchUsingDELETE"></a>

## DELETE deleteUserRoleBatch

DELETE /sys/user/deleteUserRoleBatch

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|roleId|query|string| 是 |roleId|
|userIds|query|string| 是 |userIds|
|X-Access-Token|header|string| 否 |none|

> 返回示例

> 200 Response

```json
{
  "code": 0,
  "message": "string",
  "result": {
    "id": "string",
    "roleId": "string",
    "userId": "string"
  },
  "success": true,
  "timestamp": 0
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|none|Inline|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|none|Inline|

### 返回数据结构

# 数据模型

<h2 id="tocS_接口返回对象«List«SysCountry»»">接口返回对象«List«SysCountry»»</h2>

<a id="schema接口返回对象«list«syscountry»»"></a>
<a id="schema_接口返回对象«List«SysCountry»»"></a>
<a id="tocS接口返回对象«list«syscountry»»"></a>
<a id="tocs接口返回对象«list«syscountry»»"></a>

```json
{
  "code": 0,
  "message": "string",
  "result": [
    {
      "addTime": "2019-08-24T14:15:22Z",
      "code": "string",
      "currency": "string",
      "englishName": "string",
      "id": 0,
      "name": "string",
      "shortName": "string",
      "timezone": "string"
    }
  ],
  "success": true,
  "timestamp": 0
}

```

接口返回对象

### 属性

|名称|类型|必选|约束|中文名|说明|
|---|---|---|---|---|---|
|code|integer(int32)|false|none||返回代码|
|message|string|false|none||返回处理消息|
|result|[[SysCountry](#schemasyscountry)]|false|none||返回数据对象|
|success|boolean|false|none||成功标志|
|timestamp|integer(int64)|false|none||时间戳|

<h2 id="tocS_SysCountry">SysCountry</h2>

<a id="schemasyscountry"></a>
<a id="schema_SysCountry"></a>
<a id="tocSsyscountry"></a>
<a id="tocssyscountry"></a>

```json
{
  "addTime": "2019-08-24T14:15:22Z",
  "code": "string",
  "currency": "string",
  "englishName": "string",
  "id": 0,
  "name": "string",
  "shortName": "string",
  "timezone": "string"
}

```

### 属性

|名称|类型|必选|约束|中文名|说明|
|---|---|---|---|---|---|
|addTime|string(date-time)|false|none||none|
|code|string|false|none||none|
|currency|string|false|none||none|
|englishName|string|false|none||none|
|id|integer(int32)|false|none||none|
|name|string|false|none||none|
|shortName|string|false|none||none|
|timezone|string|false|none||none|

<h2 id="tocS_接口返回对象«Map«string,string»»">接口返回对象«Map«string,string»»</h2>

<a id="schema接口返回对象«map«string,string»»"></a>
<a id="schema_接口返回对象«Map«string,string»»"></a>
<a id="tocS接口返回对象«map«string,string»»"></a>
<a id="tocs接口返回对象«map«string,string»»"></a>

```json
{
  "code": 0,
  "message": "string",
  "result": {
    "property1": "string",
    "property2": "string"
  },
  "success": true,
  "timestamp": 0
}

```

接口返回对象

### 属性

|名称|类型|必选|约束|中文名|说明|
|---|---|---|---|---|---|
|code|integer(int32)|false|none||返回代码|
|message|string|false|none||返回处理消息|
|result|object|false|none||返回数据对象|
|» **additionalProperties**|string|false|none||none|
|success|boolean|false|none||成功标志|
|timestamp|integer(int64)|false|none||时间戳|

<h2 id="tocS_SysUserRoleVO">SysUserRoleVO</h2>

<a id="schemasysuserrolevo"></a>
<a id="schema_SysUserRoleVO"></a>
<a id="tocSsysuserrolevo"></a>
<a id="tocssysuserrolevo"></a>

```json
{
  "roleId": "string",
  "userIdList": [
    "string"
  ]
}

```

### 属性

|名称|类型|必选|约束|中文名|说明|
|---|---|---|---|---|---|
|roleId|string|false|none||none|
|userIdList|[string]|false|none||none|

<h2 id="tocS_接口返回对象«SysUserRole»">接口返回对象«SysUserRole»</h2>

<a id="schema接口返回对象«sysuserrole»"></a>
<a id="schema_接口返回对象«SysUserRole»"></a>
<a id="tocS接口返回对象«sysuserrole»"></a>
<a id="tocs接口返回对象«sysuserrole»"></a>

```json
{
  "code": 0,
  "message": "string",
  "result": {
    "id": "string",
    "roleId": "string",
    "userId": "string"
  },
  "success": true,
  "timestamp": 0
}

```

接口返回对象

### 属性

|名称|类型|必选|约束|中文名|说明|
|---|---|---|---|---|---|
|code|integer(int32)|false|none||返回代码|
|message|string|false|none||返回处理消息|
|result|[SysUserRole](#schemasysuserrole)|false|none||none|
|success|boolean|false|none||成功标志|
|timestamp|integer(int64)|false|none||时间戳|

<h2 id="tocS_SysUserRole">SysUserRole</h2>

<a id="schemasysuserrole"></a>
<a id="schema_SysUserRole"></a>
<a id="tocSsysuserrole"></a>
<a id="tocssysuserrole"></a>

```json
{
  "id": "string",
  "roleId": "string",
  "userId": "string"
}

```

### 属性

|名称|类型|必选|约束|中文名|说明|
|---|---|---|---|---|---|
|id|string|false|none||none|
|roleId|string|false|none||none|
|userId|string|false|none||none|

<h2 id="tocS_接口返回对象">接口返回对象</h2>

<a id="schema接口返回对象"></a>
<a id="schema_接口返回对象"></a>
<a id="tocS接口返回对象"></a>
<a id="tocs接口返回对象"></a>

```json
{
  "code": 0,
  "message": "string",
  "result": {},
  "success": true,
  "timestamp": 0
}

```

接口返回对象

### 属性

|名称|类型|必选|约束|中文名|说明|
|---|---|---|---|---|---|
|code|integer(int32)|false|none||返回代码|
|message|string|false|none||返回处理消息|
|result|object|false|none||返回数据对象|
|success|boolean|false|none||成功标志|
|timestamp|integer(int64)|false|none||时间戳|

<h2 id="tocS_接口返回对象«IPage«SysUser»»">接口返回对象«IPage«SysUser»»</h2>

<a id="schema接口返回对象«ipage«sysuser»»"></a>
<a id="schema_接口返回对象«IPage«SysUser»»"></a>
<a id="tocS接口返回对象«ipage«sysuser»»"></a>
<a id="tocs接口返回对象«ipage«sysuser»»"></a>

```json
{
  "code": 0,
  "message": "string",
  "result": {
    "current": 0,
    "pages": 0,
    "records": [
      {
        "accountType": 0,
        "activitiSync": "string",
        "agentId": "string",
        "avatar": "string",
        "birthday": "2019-08-24T14:15:22Z",
        "brandName": "string",
        "changeTime": "2019-08-24T14:15:22Z",
        "countryCode": "string",
        "createBy": "string",
        "createTime": "2019-08-24T14:15:22Z",
        "delFlag": "string",
        "departId": "string",
        "departName": "string",
        "drTimeout": 0,
        "email": "string",
        "googleBind": 0,
        "googleKey": "string",
        "id": "string",
        "ipWhite": "string",
        "isAdmin": "string",
        "isAgent": "string",
        "notes": "string",
        "orgCode": "string",
        "password": "string",
        "phone": "string",
        "platformDomain": "string",
        "platformLogo": "string",
        "post": "string",
        "realname": "string",
        "salt": "string",
        "sex": 0,
        "status": 0,
        "superAdmin": "string",
        "telephone": "string",
        "updateBy": "string",
        "updateTime": "2019-08-24T14:15:22Z",
        "username": "string",
        "vaild": "string",
        "workNo": "string"
      }
    ],
    "searchCount": true,
    "size": 0,
    "total": 0
  },
  "success": true,
  "timestamp": 0
}

```

接口返回对象

### 属性

|名称|类型|必选|约束|中文名|说明|
|---|---|---|---|---|---|
|code|integer(int32)|false|none||返回代码|
|message|string|false|none||返回处理消息|
|result|[IPage«SysUser»](#schemaipage%c2%absysuser%c2%bb)|false|none||none|
|success|boolean|false|none||成功标志|
|timestamp|integer(int64)|false|none||时间戳|

<h2 id="tocS_IPage«SysUser»">IPage«SysUser»</h2>

<a id="schemaipage«sysuser»"></a>
<a id="schema_IPage«SysUser»"></a>
<a id="tocSipage«sysuser»"></a>
<a id="tocsipage«sysuser»"></a>

```json
{
  "current": 0,
  "pages": 0,
  "records": [
    {
      "accountType": 0,
      "activitiSync": "string",
      "agentId": "string",
      "avatar": "string",
      "birthday": "2019-08-24T14:15:22Z",
      "brandName": "string",
      "changeTime": "2019-08-24T14:15:22Z",
      "countryCode": "string",
      "createBy": "string",
      "createTime": "2019-08-24T14:15:22Z",
      "delFlag": "string",
      "departId": "string",
      "departName": "string",
      "drTimeout": 0,
      "email": "string",
      "googleBind": 0,
      "googleKey": "string",
      "id": "string",
      "ipWhite": "string",
      "isAdmin": "string",
      "isAgent": "string",
      "notes": "string",
      "orgCode": "string",
      "password": "string",
      "phone": "string",
      "platformDomain": "string",
      "platformLogo": "string",
      "post": "string",
      "realname": "string",
      "salt": "string",
      "sex": 0,
      "status": 0,
      "superAdmin": "string",
      "telephone": "string",
      "updateBy": "string",
      "updateTime": "2019-08-24T14:15:22Z",
      "username": "string",
      "vaild": "string",
      "workNo": "string"
    }
  ],
  "searchCount": true,
  "size": 0,
  "total": 0
}

```

### 属性

|名称|类型|必选|约束|中文名|说明|
|---|---|---|---|---|---|
|current|integer(int64)|false|none||none|
|pages|integer(int64)|false|none||none|
|records|[[SysUser](#schemasysuser)]|false|none||none|
|searchCount|boolean|false|none||none|
|size|integer(int64)|false|none||none|
|total|integer(int64)|false|none||none|

<h2 id="tocS_SysUser">SysUser</h2>

<a id="schemasysuser"></a>
<a id="schema_SysUser"></a>
<a id="tocSsysuser"></a>
<a id="tocssysuser"></a>

```json
{
  "accountType": 0,
  "activitiSync": "string",
  "agentId": "string",
  "avatar": "string",
  "birthday": "2019-08-24T14:15:22Z",
  "brandName": "string",
  "changeTime": "2019-08-24T14:15:22Z",
  "countryCode": "string",
  "createBy": "string",
  "createTime": "2019-08-24T14:15:22Z",
  "delFlag": "string",
  "departId": "string",
  "departName": "string",
  "drTimeout": 0,
  "email": "string",
  "googleBind": 0,
  "googleKey": "string",
  "id": "string",
  "ipWhite": "string",
  "isAdmin": "string",
  "isAgent": "string",
  "notes": "string",
  "orgCode": "string",
  "password": "string",
  "phone": "string",
  "platformDomain": "string",
  "platformLogo": "string",
  "post": "string",
  "realname": "string",
  "salt": "string",
  "sex": 0,
  "status": 0,
  "superAdmin": "string",
  "telephone": "string",
  "updateBy": "string",
  "updateTime": "2019-08-24T14:15:22Z",
  "username": "string",
  "vaild": "string",
  "workNo": "string"
}

```

### 属性

|名称|类型|必选|约束|中文名|说明|
|---|---|---|---|---|---|
|accountType|integer(int32)|false|none||none|
|activitiSync|string|false|none||none|
|agentId|string|false|none||none|
|avatar|string|false|none||none|
|birthday|string(date-time)|false|none||none|
|brandName|string|false|none||none|
|changeTime|string(date-time)|false|none||none|
|countryCode|string|false|none||none|
|createBy|string|false|none||none|
|createTime|string(date-time)|false|none||none|
|delFlag|string|false|none||none|
|departId|string|false|none||none|
|departName|string|false|none||none|
|drTimeout|integer(int32)|false|none||none|
|email|string|false|none||none|
|googleBind|integer(int32)|false|none||none|
|googleKey|string|false|none||none|
|id|string|false|none||none|
|ipWhite|string|false|none||none|
|isAdmin|string|false|none||none|
|isAgent|string|false|none||none|
|notes|string|false|none||none|
|orgCode|string|false|none||none|
|password|string|false|none||none|
|phone|string|false|none||none|
|platformDomain|string|false|none||none|
|platformLogo|string|false|none||none|
|post|string|false|none||none|
|realname|string|false|none||none|
|salt|string|false|none||none|
|sex|integer(int32)|false|none||none|
|status|integer(int32)|false|none||none|
|superAdmin|string|false|none||none|
|telephone|string|false|none||none|
|updateBy|string|false|none||none|
|updateTime|string(date-time)|false|none||none|
|username|string|false|none||none|
|vaild|string|false|none||none|
|workNo|string|false|none||none|

<h2 id="tocS_接口返回对象«List«string»»">接口返回对象«List«string»»</h2>

<a id="schema接口返回对象«list«string»»"></a>
<a id="schema_接口返回对象«List«string»»"></a>
<a id="tocS接口返回对象«list«string»»"></a>
<a id="tocs接口返回对象«list«string»»"></a>

```json
{
  "code": 0,
  "message": "string",
  "result": [
    "string"
  ],
  "success": true,
  "timestamp": 0
}

```

接口返回对象

### 属性

|名称|类型|必选|约束|中文名|说明|
|---|---|---|---|---|---|
|code|integer(int32)|false|none||返回代码|
|message|string|false|none||返回处理消息|
|result|[string]|false|none||返回数据对象|
|success|boolean|false|none||成功标志|
|timestamp|integer(int64)|false|none||时间戳|

<h2 id="tocS_接口返回对象«string»">接口返回对象«string»</h2>

<a id="schema接口返回对象«string»"></a>
<a id="schema_接口返回对象«string»"></a>
<a id="tocS接口返回对象«string»"></a>
<a id="tocs接口返回对象«string»"></a>

```json
{
  "code": 0,
  "message": "string",
  "result": "string",
  "success": true,
  "timestamp": 0
}

```

接口返回对象

### 属性

|名称|类型|必选|约束|中文名|说明|
|---|---|---|---|---|---|
|code|integer(int32)|false|none||返回代码|
|message|string|false|none||返回处理消息|
|result|string|false|none||返回数据对象|
|success|boolean|false|none||成功标志|
|timestamp|integer(int64)|false|none||时间戳|

