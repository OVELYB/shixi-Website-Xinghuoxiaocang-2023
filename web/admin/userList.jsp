<%--
  Created by IntelliJ IDEA.
  User: lyb
  Date: 2023/7/4
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="author" content="order by dede58.com"/>
    <title>管理员-用户列表</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <link rel="stylesheet" type="text/css" href="../css/pintuer.css">
    <link rel="stylesheet" type="text/css" href="../css/admin.css">
    <script src="../js/jquery.js"></script>
    <script src="../js/pintuer.js"></script>
</head>
<body>
<!-- start header -->

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
            <div class="ddzx">后台管理</div>
            <div class="subddzx">
                <ul>
                    <li><a href="/admin/userlist" style="color:#ff6700;font-weight:bold;">用户管理</a></li>
                    <li><a href="/admin/handlelist">品类管理</a></li>
                    <li><a href="/admin/goodslist">商品管理</a></li>

                </ul>
            </div>

        </div>
        <div class="rtcont fr" style="overflow: scroll">
            <div class="panel admin-panel">
                <div class="panel-head"><strong class="icon-reorder"> 用户列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
                <div class="padding border-bottom">
                    <ul class="search" style="padding-left:10px;">
                        <li> <a class="button border-main icon-plus-square-o" href="/admin/adduserlist"> 添加内容</a> </li>



                        <li>
                            <input type="text" placeholder="请输入搜索关键字" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
                            <a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 搜索</a></li>
                    </ul>
                </div>
                <table class="table table-hover text-center">
                    <tr>
                        <th width="100" style="text-align:left; padding-left:20px;">ID</th>
                        <th  width="100" style="text-align:left; padding-left:20px;">用户名</th>
                        <th  width="100" style="text-align:left; padding-left:20px;">密码</th>
                        <th  width="100" style="text-align:left; padding-left:20px;">手机</th>
                        <th width="100" style="text-align:left; padding-left:20px;">邮箱</th>
                        <th width="100" style="text-align:left; padding-left:20px;">是否有效</th>
                        <th  width="100" style="text-align:left; padding-left:20px;">角色</th>
                        <th  width="100" style="text-align:left; padding-left:20px;">创建时间</th>
                        <th>操作</th>
                    </tr>
                    <volist name="list" id="vo">
                        <c:forEach items="${allusers}" var="u">
                        <tr>
                            <td style="text-align:left; padding-left:20px;">${u.id}</td>
                            <td>${u.username}</td>
                            <td>${u.password}</td>
                            <td>${u.phone}</td>
                            <td>${u.email}</td>
                            <td>${u.active}</td>
                            <td>${u.role}</td>
                            <td>${u.createTime}</td>
                            <td><div class="button-group"> <a class="button border-main" href="/admin/updateuserlist?id=${u.id}"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="/admin/deleteuserlist?id=${u.id}"><span class="icon-trash-o"></span> 删除</a></div></td>
                        </tr>
                        </c:forEach>
                </table>
            </div>
        </div>
    </div>
        <div class="clear"></div>
</div>



<!-- self_info -->

<footer>
    <div class="mt20">
        星火小仓：做最好的电子元件商城
        <br>
        欢迎联系我们：100800600
        <br>
        地址：西安电子科技大学南校区
    </div>

</footer>
</body>
</html>