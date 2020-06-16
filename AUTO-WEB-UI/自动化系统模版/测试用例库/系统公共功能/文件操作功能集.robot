*** Settings ***
Suite Setup     文件动态参数预加载
Resource        ../../我的关键字/系统公共功能/文件操作功能集.robot

*** Test Cases ***
用户文件内容解析并查询数据库断言
  用户文件内容解析并查询数据库断言  ${本地用户文件路径}
