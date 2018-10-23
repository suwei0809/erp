<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/22
  Time: 13:35
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
    <title>欢迎登录后台管理系统</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="/js/jquery-3.2.1.js"></script>
    <script src="/js/cloud.js" type="text/javascript"></script>
    <script src="/js/jquery.js" type="text/javascript"></script>

    <script language="javascript">
        $(function(){
            $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
            $(window).resize(function(){
                $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
            })
        });
    </script>

</head>
<body style="background-color:#1c77ac; background-image:url(/images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">
<div id="mainBody">
    <div id="cloud1" class="cloud"></div>
    <div id="cloud2" class="cloud"></div>
</div>
<div class="logintop">
    <span>欢迎登录后台管理界面平台</span>
    <ul>
        <li><a href="#">回首页</a></li>
        <li><a href="#">帮助</a></li>
        <li><a href="#">关于</a></li>
    </ul>
</div>
<div class="loginbody">
    <span class="systemlogo"></span>
    <div class="loginbox loginbox3">
        <ul>
            <li><input name="name" type="text" id="name" class="loginuser" value="账号" onclick="JavaScript:this.value=''"/></li>
            <li><input name="pass" type="text" id="pass" class="loginpwd" value="密码" onclick="JavaScript:this.value=''"/></li>
            <li><input name="" type="button" id="sub" class="loginbtn" value="登录"  />
                <%--<label><input name="" type="checkbox" value="" checked="checked" />记住密码</label><label><a href="#">忘记密码？</a></label></li>--%>
        </ul>
    </div>
</div>
<div class="loginbm">版权所有  2014  <a href="http://www.uimaker.com">uimaker.com</a>  仅供学习交流，勿用于任何商业用途</div>
</body>
<script src="/js/jquery-3.2.1.js"></script>
<script>
    $(function () {
        $("#sub").click(function () {
            $.ajax({
                type:"post",
                url:"backLogin",
                data:JSON.stringify({
                   "accountName" :$("#name").val(),
                    "password" :$("#pass").val()
                }),
                contentType: 'application/json; charset=utf-8',
                success:function (data) {
                    if (data==200){
                        location.href="backIndex"
                    }else if(data == 201){
                        location.href ="backLoginPage"
                    }else {
                        location.href="backLoginPage"
                    }
                }
            })
        })
    })
</script>

</html>
