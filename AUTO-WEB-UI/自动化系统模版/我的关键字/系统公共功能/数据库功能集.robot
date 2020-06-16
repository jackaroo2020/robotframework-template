*** Settings ***
Resource        ../../我的配置/全局参数配置.robot
Library         DatabaseLibrary

*** Variables ***
${db_params}    ${数据库配置}
${oracle_info}  ${数据库Oracle配置}

*** Keywords ***
连接mysql数据库
  Connect To Database  dbapiModuleName=pymysql  dbName=${db_params}[dbName]  dbUsername=${db_params}[dbUsername]  dbPassword=${db_params}[dbPassword]  dbHost=${db_params}[dbHost]  dbPort=${db_params}[dbPort]

连接oracle数据库
  Connect To Database  dbapiModuleName=cx_Oracle  dbName=${oracle_info}[dbName]  dbUsername=${oracle_info}[dbUsername]  dbPassword=${oracle_info}[dbPassword]  dbHost=${oracle_info}[dbHost]  dbPort=${oracle_info}[dbPort]

关闭数据库连接
  Disconnect From Database

执行SQL脚本
  [Arguments]  ${EXECDIR}
  ${execsql}  Execute Sql Script  ${EXECDIR}
  Log  ${execsql}

查询用户信息
  @{select}  Query  SELECT * FROM test_ui t limit 5
  Log Many  @{select}

修改用户信息
  [Arguments]  ${user_name}
  ${update}  Execute Sql String  UPDATE test_ui SET user_name = '${user_name}' WHERE user_id = 2
  Log  ${update}

新增用户信息
  ${insert}  Execute Sql String  INSERT INTO test_ui(user_account,user_name,sex,birthday) values('zhangsan3','李四',0,'2007-04-15')
  Log  ${insert}

删除用户信息
  ${delete}  Execute Sql String  DELETE FROM test_ui WHERE user_id = 4
  Log  ${delete}

查询用户信息Oracle
  @{select}  Query  SELECT * FROM test_ui t WHERE rownum < 5
  Log Many  @{select}

根据账户断言用户记录存在
  [Arguments]  ${user_account}
  Check If Exists In Database  SELECT * FROM test_ui WHERE user_account='${user_account}'
