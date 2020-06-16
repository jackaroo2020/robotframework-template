*** Settings ***
Resource        ../../我的配置/全局参数配置.robot
Library         MyLibrary

*** Variables ***
${sftp_params}  ${sftp配置}

*** Keywords ***
下载服务器文件
  [Arguments]  ${remote_path}  ${local_path}
  Open Connection sftp
  服务器文件存在断言  ${remote_path}
  Download File  ${sftp}  ${remote_path}  ${local_path}
  Sftp Close  ${sftp}

服务器文件存在断言
  [Arguments]  ${remote_path}
  ${result}=  File Exist  ${sftp}  ${remote_path}
  ${r1}  Convert To String  ${result}[0]
  Should Be Equal  ${r1}  1

Open Connection sftp
  ${sftp}  Get Sftp Connect  ${sftp_params}[host]  ${sftp_params}[port]  ${sftp_params}[username]  ${sftp_params}[password]
  Should Not Be Equal  ${sftp}  None
  Set Test Variable  ${sftp}
