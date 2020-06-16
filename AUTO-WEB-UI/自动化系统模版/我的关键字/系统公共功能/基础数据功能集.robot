*** Settings ***
Library         String

*** Variables ***
${local_download_path}  ${本地文件下载路径}[localPath]
${flag_01}      ${文件标识}[flag_01]
${end_flag}     ${文件标识}[end_flag]

*** Keywords ***
生成测试用例昨天日期变量
  截取昨天日期为YYYY-MM-DD

截取前天日期为YYYY-MM-DD
  设置前天日期
  ${yesterdayBeforeArr}=  Split String  ${yesterdayBefore} " "
  ${yesterdayBeforeMd}=  Set Variable  ${yesterdayBeforeArr}[0]
  Set Suite Variable  ${yesterdayBeforeMd}

截取昨天日期为YYYY-MM-DD
  设置昨天日期
  ${yesterdayArr}=  Split String  ${yesterday} " "
  ${yesterdayMd}=  Set Variable  ${yesterdayArr}[0]
  Set Suite Variable  ${yesterdayMd}

设置昨天日期
  ${yesterday}  Get Time  YYYY-MM-DD hh:mm:ss  NOW-86400
  Set Suite Variable  ${yesterday}

设置前天日期
  ${yesterdayBefore}  Get Time  YYYY-MM-DD hh:mm:ss  NOW-172800
  Set Suite Variable  ${yesterdayBefore}
