<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/20
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/css/public.css">
</head>
<body>
<div class="w100 h460 cb pt30 pb50">
    <div class="wp1190 h460 ma bgw">
        <div class="wp920 ma pt30">
            <div class="fs20 bbd h30 tac w100 cb">
                <span class="fl fsl4">学员登录</span>
            </div>
            <div class="w100 cb mt20">
                <div class="wp350">
                    <form action="http://pass.zhizuobiao.com/" method="post" name="loginForm">
                        <input type="hidden" name="targetUrl" value="">
                        <div class="w100 h40 cb mt30">
                            <input type="tel" name="mobile" id="name" placeholder="请输入登录账号" class="wp340 db h30 ma" value="">
                        </div>
                        <div class="h20 wp350 cb">
                            <span class="ce1" id="mobile"></span>
                        </div>
                        <div class="w100 h40 cb mt10">
                            <input type="password" name="password" id="pass" placeholder="请输入账号密码" class="wp340 db h30 ma">
                        </div>
                        <div class="h20 wp350 cb">
                            <span class="ce1" id="password"></span>
                        </div>
                        <div class="h40 w100 mt10 cb">
                            <span class="fs20 bgblack cf tac h40 lh3 wp350 db cur ma" id="userLogin">登录</span>
                        </div>
                        <div class="h40 w100 mt10 cb">
                            <span class="fr">
                                <span class="fl c3"><a href="registerPage">免费注册</a></span>
                            </span>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script src="/js/jquery-3.2.1.js"></script>
<script>
    $(function () {
        $("#userLogin").click(function () {
            $.ajax({
                type:"post",
                url:"login",
                data:{
                    "name": $("#name").val(),
                    "password":$("#pass").val(),
                },
                success:function (data) {
                    if (data==200){
                        location.href="homePage"
                    }else {
                        location.href="loginPage"
                    }
                }
            })
        })
    })
</script>

</html>
