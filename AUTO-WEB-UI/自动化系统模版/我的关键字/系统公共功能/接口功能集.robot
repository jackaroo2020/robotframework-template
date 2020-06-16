*** Settings ***
Resource        ../../我的配置/全局参数配置.robot
Library         RequestsLibrary

*** Keywords ***
自动化平台查询用户-post
  &{header}=  Create Dictionary  Content-Type=application/json  charset=UTF-8
  # 创建会话，别名为 test
  Create Session  test  &{自动化平台接口地址}[address]  headers=${header}
  # 准备请求数据
  &{data}=  Create Dictionary  servInfo=[{"id":"376","type":"1"}]  isSend= 0
  # 发送post请求
  ${resp}  Post Request  test  &{自动化平台接口地址}[urlPath]  ${data}
  # 获取本次的响应数据
  Log  ${resp.json()["code"]}
  Should Be Equal As Strings  ${resp.json()["code"]}  10000
  Sleep  8
  Delete All Sessions

账户余额查询-get
  [Arguments]  ${base_acct_no}
  &{header}=  Create Dictionary  Content-Type=application/json  charset=UTF-8
  # 创建会话，别名为 test
  Create Session  test  &{账户余额查询接口地址}[address]  headers=${header}
  # 准备请求数据
  &{params}=  Create Dictionary  base_acct_no=${base_acct_no}  channel_seq_no=0
  # 发送post请求
  ${resp}  Get Request  test  &{账户余额查询接口地址}[urlPath]  params=${params}
  Should Be Equal As Strings  ${resp.status_code}  200
  ${respdata}=  To Json  ${resp.content}
  Should Be Equal As Strings  ${respdata}[head][rsp_code]  000000
  ${余额}=  Set Variable  ${respdata}[body][acct_array][0][ledger_money]
  Delete All Sessions
  [Return]  ${余额}
