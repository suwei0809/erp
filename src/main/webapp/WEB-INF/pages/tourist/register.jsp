<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/19
  Time: 17:17
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
    <link rel="stylesheet" type="text/css" href="/css/public.css"/>
</head>
<body>
<div class="w100 h460 cb pt30 pb50">
<div class="wp1190 h460 ma bgw">
    <div class="wp920 ma pt30">
        <div class="fs20 bbd h30 tac w100 cb">
            <span class="fl fsl4">学员注册</span>
            <span class="c9 fr fs">已有学员账号，直接<span class="c6"><a href="http://pass.zhizuobiao.com/">登录&gt;&gt;</a></span></span>
        </div>
        <div class="w100 cb mt20">
            <div class="wp350">
                <form action="http://pass.zhizuobiao.com/register/" method="post" name="registerForm" class="registerForm" >
                    <input type="hidden" name="registerType" value="1">
                    <div class="h20 wp350 cb">
                        <input type="tel" name="mobile" maxlength="11" placeholder="请输入账号" value="" class="wp350 db h30 ma">
                    </div>
                    <div class="h20 wp350 cb">
                        <span class="ce1" id="mobile"></span>
                    </div>
                    <div class="h20 wp350 cb">
                        <input type="password" name="code" maxlength="6" placeholder="请输入密码" class="wp350 db h30 ma">
                    </div>
                    <div class="h20 wp350 cb">
                        <span class="ce1" id="code"></span>
                    </div>
                    <div class="h20 wp350 cb">
                        <input type="password" name="password" maxlength="16" placeholder="请确认账号密码" class="wp350 db h30 ma">
                    </div>
                    <div class="h20 wp350 cb">
                        <span class="ce1" id="password"></span>
                    </div>
                    <div class="h40 w100 mt10 cb">
                        <span class="fs20 bgblack cf tac h40 lh3 wp350 db cur ma" id="userRegister">注册</span>
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
        
        $("#userRegister").click(function () {
            
        })
        
        
        
    })
    
    
</script>


</html>
