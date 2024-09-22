## 本项目实现的最终作用是基于SSH校园失物招领平台系统
## 分为2个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 公告信息管理
 - 区域信息管理
 - 失物信息管理
 - 帮助信息管理
 - 招领信息管理
 - 用户管理
 - 管理员登录
 - 类型信息管理
### 第2个角色为用户角色，实现了如下功能：
 - 个人中心管理
 - 修改资料
 - 发布失物信息
 - 发表查看评论
 - 查看失物招领信息
 - 查看寻物启事
 - 查看帮助中心
 - 查看招领启事
## 数据库设计如下：
# 数据库设计文档

**数据库名：** ssh_lostfound_sys

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [t_admin](#t_admin) | 管理员表 |
| [t_announcement](#t_announcement) |  |
| [t_area](#t_area) |  |
| [t_comment](#t_comment) |  |
| [t_goods](#t_goods) |  |
| [t_help](#t_help) |  |
| [t_type](#t_type) |  |
| [t_user](#t_user) | 用户表 |

**表名：** <a id="t_admin">t_admin</a>

**说明：** 管理员表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | ID  |
|  2   | adminlastloginIP |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | adminlastloginarea |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | adminlastlogintime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    |   |
|  5   | adminname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 管理员名称  |
|  6   | adminpassword |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_announcement">t_announcement</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | ID  |
|  2   | announceinfo |   longtext   | 2147483647 |   0    |    Y     |  N   |   NULL    |   |
|  3   | announcetitle |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_area">t_area</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | ID  |
|  2   | areaname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_comment">t_comment</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | commentcontent |   longtext   | 2147483647 |   0    |    Y     |  N   |   NULL    |   |
|  3   | commenttime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    |   |
|  4   | goods_id |   int   | 10 |   0    |    N     |  N   |       | 商品ID  |
|  5   | user_id |   int   | 10 |   0    |    N     |  N   |       | 用户ID  |

**表名：** <a id="t_goods">t_goods</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | ID  |
|  2   | goodsdescribe |   longtext   | 2147483647 |   0    |    Y     |  N   |   NULL    |   |
|  3   | goodsname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | goodspictures |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | goodsstatus |   int   | 10 |   0    |    N     |  N   |       |   |
|  6   | goodstime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    |   |
|  7   | area_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  8   | type_id |   int   | 10 |   0    |    Y     |  N   |   NULL    | 类型ID  |
|  9   | user_id |   int   | 10 |   0    |    N     |  N   |       | 用户ID  |

**表名：** <a id="t_help">t_help</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | ID  |
|  2   | helpInfo |   longtext   | 2147483647 |   0    |    Y     |  N   |   NULL    |   |
|  3   | helpTitle |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_type">t_type</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | ID  |
|  2   | typename |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类型名称  |

**表名：** <a id="t_user">t_user</a>

**说明：** 用户表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | ID  |
|  2   | username |   varchar   | 16 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | usernickname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | userpassword |   varchar   | 16 |   0    |    Y     |  N   |   NULL    |   |
|  5   | userphone |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | userqq |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | userstatus |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

