*** Settings ***
Resource          ../../我的关键字/全局初始化.robot

*** Test Cases ***
获取当前时间前10分钟时间
    ${time}    Get Time    YYYY-MM-DD hh:mm:ss    NOW-600
