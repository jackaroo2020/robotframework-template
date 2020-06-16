*** Variables ***
&{数据库配置}        dbName=web-ui  dbUsername=root  dbPassword=123456  dbHost=127.0.0.1  dbPort=3306
&{数据库Oracle配置}  dbName=web-ui  dbUsername=root  dbPassword=123456  dbHost=127.0.0.1  dbPort=1521
&{自动化系统}        url=http://127.0.0.1:8088/login.html  loginName=admin  loginPwd=admin
&{自动化平台接口地址}    address=http://127.0.0.1:8099  urlPath=/api/test
&{账户余额查询接口地址}   address=http://127.0.0.1:8100  urlPath/api/v1/account/queryBalance
&{本地项目盘符路径}     projectPath=G:${/}workspace${/}robotframework-template
&{本地文件下载路径}     localPath=${本地项目盘符路径}[projectPath]${/}testdata${/}download${/}
&{文件标识}         flag_01=my_test_2020-06-16  end_flag=.txt
&{sftp配置}       host=127.0.0.1  port=22  username=sfpuser  password=sftppwd
