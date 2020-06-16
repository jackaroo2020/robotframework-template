*** Settings ***
Resource        ../../我的配置/全局参数配置.robot
Library         SeleniumLibrary

*** Variables ***
${auto_url}     ${自动化系统}[url]
${auto_loginname}  ${自动化系统}[loginName]
${auto_userpwd}  ${自动化系统}[loginPwd]

*** Keywords ***
打开自动化平台
  Open Browser  ${auto_url}  Chrome  alias=first
  Maximize Browser Window
  Set Selenium Implicit Wait  60 seconds
  Page Should Contain  自动化平台

登录
  Input Text  name=userName  ${auto_loginname}
  Input Password  name=password  ${auto_userpwd}
  Click Button  xpath=//*[@id="loginForm"]/div/div[3]/div[2]/button
  Login Success Assert

Login Success Assert
  Set Selenium Implicit Wait  90 seconds
  Page Should Contain  修改密码

切换到自动化平台
  Switch Browser  first
  Wait Until Page Contains  修改密码

选择Frame
  Select Frame  //*[@id="rap"]/div[1]/section[2]/iframe

释放Frame
  Unselect Frame

滑动到顶部
  Execute Javascript  document.documentElement.scrollTop=0
