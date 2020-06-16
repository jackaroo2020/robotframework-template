*** Settings ***
Suite Setup     连接mysql数据库
Suite Teardown  关闭数据库连接
Resource        ../../我的关键字/系统公共功能/数据库功能集.robot

*** Test Cases ***
查询用户信息
  查询用户信息

修改用户信息
  修改用户信息  张三

新增用户信息
  新增用户信息

删除用户信息
  删除用户信息
