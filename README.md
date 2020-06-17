#####  **第一章**   **项目特色**

基于WEBUI自动化项目企业实战经验总结搭建的属于自己的一套自动化开发脚手架。

技术框架选用Robot Framework用于验收测试和验收测试驱动开发（ATDD）的自动化测试框架。 基于 Python 编写，提供跨平台支持。通过使用关键字驱动测试（KDT）方法简化了自动化测试过程，方便测试人员创建易读的测试。

###### 一、简单易学

脚手架模版不仅在设计上根据实战做了项目的层级设计，同时在开发效率和示例也做了一些常用示例的演示，RF框架采用关键字驱动开发方式，使其不懂代码也可以迅速上手开发写属于自己的自动化代码。

###### 二、关键字驱动开发，关键字库丰富

​    接口可以引入第三方RequestsLibrary库，FTP操作可以引入第三方FTP Library库，浏览器操作可以引入第三方Selenium2Library库，文件操作可以引入框架内置库OperatingSystem库，Collections库，String库，数据库操作可以引入第三方Database Library库。

详细可以参考RF框架_常用内置关键字库和第三方库介绍程：

<https://blog.csdn.net/qq3399013670/article/details/106445014>

###### 三、可扩展性和可维护性高

   脚手架模版结构定义清晰，可扩展性好。配置文件与测试用例测试场景分离，初始化引入等设计使其后期易维护。

##### **第二章**	**项目环境搭建说明**
###### 一、开发环境说明

1、本地开发环境适用搭建的anaconda虚拟环境，python版本为：3.7.6

```
# 数据库安装库
pip install robotframework-databaselibrary
pip install pymysql

# 浏览器安装库
# 注意web自动化，还需要相应的浏览器驱动
pip install robotframework-selenium2library

# 接口测试安装库
pip install requests
pip install robotframework-requests

# 图像识别库
pip install robotframework-sikulilibrary
```

2、自定义测试库：

搭建可以参考RF框架_anaconda虚拟环境安装及使用教程：

<https://blog.csdn.net/qq3399013670/article/details/106292687>

###### 二、开发工具

   本地开发工具适用ride编辑器。

搭建可以参考RF框架_RF框架_开发工具RIDE介绍:

<https://blog.csdn.net/qq3399013670/article/details/106444199>

###### **三、注意事项**

**1、使用****SikuliLibrary****库注意事项**

则本地需要安装Java JDK1.8版本以上环境。如果在自己项目中不需要使用，则去除SikuliLibrary库的引用即可。

**2、使用自定义****测试****库**

将已有的自定义测试库MyLibrary放在python安装目录lib\sit-packages下。【项目目录AutoTester\testdesign有备份】

**3、自定义监听器使用**

在RIDE中使用。参数如下所示:

--listener TestCaseListener:所在部门名称-测试战队:2:lt

（1）--listener TestCaseListener 为固定写法

（2）参数以冒号分割：必填参数为前两位分别对应：战队：测试类型：执行者（不填则默认为automation）

监听器官网文档：

<https://robotframework-userguide-cn.readthedocs.io/zh_CN/latest/ExtendingRobotFramework/ListenerInterface.html>

##### **第三章、项目框架设计说明**

###### **一、第一层目录层级**
![在这里插入图片描述](https://images.gitee.com/uploads/images/2020/0617/095941_24cdc32f_5536345.jpeg)
* AUTO-WEB-UI: 放置WEB-UI自动化UI脚本源码

* testdata：放置EXCEL用例或测试数据

* testdesign：存放自动化系统数据结构和开发设计文档

* testimg：存放系统截图

###### 二、自动化脚本**目录**

![在这里插入图片描述](https://images.gitee.com/uploads/images/2020/0617/095941_11e100a5_5536345.jpeg)
测试场景库设计下层目录为单场景和多场景：

* 单场景：将测试用例库调试好的用例抽取为关键字，然后根据ATDD驱动开发组装为单场景

* 多场景：将单场景抽取为关键字，然后将单场景组装为多场景

测试用例库

* 单步骤：根据需求抽取单个步骤功能

* 测试用例：根据系统菜单划分层级，调试测试用例。

 

##### 第四章、**启动说明**

使用Ride工具引入到UI层级。如图所示

![在这里插入图片描述](https://images.gitee.com/uploads/images/2020/0617/095941_25b6d47f_5536345.jpeg)

###### 一、 常规启动

![在这里插入图片描述](https://images.gitee.com/uploads/images/2020/0617/095943_1ee4fcf5_5536345.jpeg)

 

###### 二、 上报数据启动

将监听器参数按监听器规则写入Arguments参数选项框，如下示例：

![在这里插入图片描述](https://images.gitee.com/uploads/images/2020/0617/095943_272b96a4_5536345.jpeg)

###### 三、 查看报告

点击Report即可查看运行的详细报告，示例如下：

![在这里插入图片描述](https://images.gitee.com/uploads/images/2020/0617/095942_805aea67_5536345.jpeg)


#### 第四章、使用说明书及视频演示资料(服务收费版(39.9元)

以下为脚手架整理的全部资料，供参考，如需详细资料及技术支持，请加个人微信号<br/> 

微信号：<br/>
<img src="https://images.gitee.com/uploads/images/2020/0617/095942_541b2bfe_5536345.jpeg" width = "200" height = "200" /><br/> 

资料部分截图如下所示：<br/>
<img src="https://images.gitee.com/uploads/images/2020/0617/095942_7a93e461_5536345.png" width = "500"  /><br/>
<img src="https://images.gitee.com/uploads/images/2020/0617/095942_4b3de6d7_5536345.png" width = "500"  /><br/>
<img src="https://images.gitee.com/uploads/images/2020/0617/095943_54b631a8_5536345.png" width = "500"  /><br/>
<img src="https://images.gitee.com/uploads/images/2020/0617/095943_de812308_5536345.png" width = "500"  /><br/>

**#### 支持**

该项目是个人基于Airtest搭建的模块框架，如果你发现了新的 bug请新建一个 issue，欢迎指正。如果对你有帮助，给个 star 哟👏👏

**#### 捐赠**

如果觉得还不错，请作者喝杯咖啡吧 ☺<br/> 

![在这里插入图片描述](https://images.gitee.com/uploads/images/2020/0617/095943_05795724_5536345.jpeg)

##### **附录参考：**
[RF_常用内置关键字库和第三方库介绍](https://blog.csdn.net/qq3399013670/article/details/106445014)<br/>
[RF_常见问题集锦](https://blog.csdn.net/qq3399013670/article/details/106445299)
 