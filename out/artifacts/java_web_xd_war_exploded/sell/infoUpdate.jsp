<%--
  Created by IntelliJ IDEA.
  User: guoke
  Date: 2023/7/3
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="author" content="order by dede58.com"/>
    <title>小米商城-个人中心</title>
    <link rel="stylesheet" type="text/css" href="../css/style2.css">
    <link rel="stylesheet" href="../css/pintuer2.css">
    <link rel="stylesheet" href="../css/admin2.css">
</head>
<body>
<!-- start header -->
<header>
    <div class="top center">
        <div class="left fl">
            <ul>
                <li><a href="http://www.mi.com/" target="_blank">小米商城</a></li>
                <li>|</li>
                <li><a href="">MIUI</a></li>
                <li>|</li>
                <li><a href="">米聊</a></li>
                <li>|</li>
                <li><a href="">游戏</a></li>
                <li>|</li>
                <li><a href="">多看阅读</a></li>
                <li>|</li>
                <li><a href="">云服务</a></li>
                <li>|</li>
                <li><a href="">金融</a></li>
                <li>|</li>
                <li><a href="">小米商城移动版</a></li>
                <li>|</li>
                <li><a href="">问题反馈</a></li>
                <li>|</li>
                <li><a href="">Select Region</a></li>
                <div class="clear"></div>
            </ul>
        </div>
        <div class="right fr">
            <div class="gouwuche fr"><a href="">我的订单</a></div>
            <div class="fr">
                <ul>
                    <li><a href="./login.html" target="_blank">登录</a></li>
                    <li>|</li>
                    <li><a href="./register.html" target="_blank" >注册</a></li>
                    <li>|</li>
                    <li><a href="./self_info.html">个人中心</a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</header>
<!--end header -->
<!-- start banner_x -->
<div class="banner_x center">
    <a href="./index.html" target="_blank"><div class="logo fl"></div></a>
    <a href=""><div class="ad_top fl"></div></a>
    <div class="nav fl">
        <ul>
            <li><a href="">电容</a></li>
            <li><a href="">电阻</a></li>
            <li><a href="">杜邦线</a></li>
            <li><a href="">二极管</a></li>
            <li><a href="">贴片电容</a></li>
            <li><a href="">直插电容</a></li>
            <li><a href="">插件电容</a></li>
            <li><a href="">变容二极管</a></li>
            <li><a href="">雪崩二极管</a></li>
        </ul>

    </div>
    <div class="navright fl">
        <ul>
            <li>
                <div  style="text-align: right">
                    <a href="/index/login" target="_blank">退出登录</a>|<a href="/index/register" target="_blank" >注册</a>|<a href="/index">返回首页</a>
                </div>

            </li>
        </ul>
    </div>

</div>
<!-- end banner_x -->
<!-- self_info -->
<div class="grzxbj">
    <div class="selfinfo center">
        <div class="lfnav fl">
            <div class="ddzx">管理中心</div>
            <div class="subddzx" style="font-size: 16px;">
                <ul>
                    <li><a href="/sell/handle">品类管理</a></li>
                    <li><a href="/sell/goods">商品管理</a></li>
                </ul>
            </div>
            <div class="ddzx">个人中心</div>
            <div class="subddzx" style="font-size: 16px;">
                <ul>
                    <li><a href="/sell/info" style="color:#ff6700;font-weight:bold;">我的个人中心</a></li>
                </ul>
            </div>
        </div>
        <div class="rtcont fr" style="overflow: scroll">
            <div class="grzlbt ml40">修改资料</div>
            <form action="/sell/doInfoUpdate">
                <div class="biaotou ml40"><span>昵称:</span></div><input type="text" class="xinxi ml40" value="${user.username}" name="username" data-validate="required:请输入昵称" />
                <div class="biaotou ml40"><span>手机号:</span></div><input type="text" class="xinxi ml40" value="${user.phone}" name="phone" data-validate="required:请输入手机号" />
                <div class="biaotou ml40"><span>邮箱:</span></div><input type="text" class="xinxi ml40" value="${user.email}" name="email" data-validate="required:请输入邮箱" />
                <div class="biaotou ml40"><span>密码:</span></div><input type="text" class="xinxi ml40" value="${user.password}" name="password" data-validate="required:请输入密码" />
                <div class="biaotou ml40"><span>地址:</span></div><input type="text" class="xinxi ml40" value="${user.address}" name="address" data-validate="required:请输入地址" />
                <%--<div class="xiugai ml40"><span><submit href="/user/doInfoUpdate">确认修改</submit></span></div>--%>
                <input class="xiugai" type="submit" value="确认修改">

            </form>

        </div>
        <div class="clear"></div>
    </div>
</div>
<!-- self_info -->

<footer class="mt20 center">
    <div class="mt20">小米商城|MIUI|米聊|多看书城|小米路由器|视频电话|小米天猫店|小米淘宝直营店|小米网盟|小米移动|隐私政策|Select Region</div>
    <div>©mi.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2014]0059-0009号</div>
    <div>违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</div>
</footer>
</body>
</html>