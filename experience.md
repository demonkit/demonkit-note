开发问题经验总结
===
1. 会经常变更的数据只存储一份，提供统一的数据读取、更新接口。举例来说漏洞扫描中的漏洞库、插件库就是这种情况。
2. mysql表记录某些字段有重复，获取重复字段中不重复的最新一条数据的sql语句：
```
select app_name, app_package, app_version from app_info_view where id in (
    select max(id) from app_info_view where upload_source = 'inner-scan-platform' group by app_package
) order by upload_time desc;
```
