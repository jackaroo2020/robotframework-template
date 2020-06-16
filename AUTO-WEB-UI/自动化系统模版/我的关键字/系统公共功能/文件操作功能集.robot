*** Settings ***
Resource        数据库功能集.robot
Resource        基础数据功能集.robot
Library         OperatingSystem
Library         Collections
Library         String

*** Keywords ***
文件动态参数预加载
  # ${yesterday}  ${yesterdayMd}
  # ${本地文件下载路径}  ${本地用户文件路径}
  生成测试用例昨天日期变量
  Set Suite Variable  ${本地文件下载路径}  ${local_download_path}
  Set Suite Variable  ${本地用户文件路径}  ${local_download_path}${flag_01}${end_flag}

用户文件内容解析并查询数据库断言
  [Arguments]  ${local_path}
  Comment  文件行数断言
  ${content}  Get File  ${local_path}  encoding=UTF-8
  ${line_count}  Get Line Count  ${content}
  ${line_count-1}  Evaluate  ${line_count}-1
  ${line_01}=  Get Line  ${content}  0
  Should Be Equal As Integers  ${line_count-1}  ${line_01}
  Comment  文件内容与数据库对比断言
  连接mysql数据库
  Comment  根据用户账户查询数据库是否存在
  : FOR  ${i}  IN RANGE  ${1}  ${line_count}
   \  Log  for start ${i} line
   \  ${line_context}=  Get Line  ${content}  ${i}
   \  ${line_arr}=  Split String  ${line_context}  |
   \  ${user_account}=  Set Variable  ${line_arr}[4]
   \  根据账户断言用户记录存在  ${user_account}
  关闭数据库连接
