<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/20
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/css/resume/base.css">
    <link rel="stylesheet" type="text/css" href="/css/resume/my51.css">
</head>
<body>
<div class="nag" id="topIndex">
    <div class="in">
        <a href="//www.51job.com"><img class="logo" id="logo" width="116" height="46" src="//img05.51jobcdn.com/im/2016/logo/logo_20jubilee_116x46.png" alt="前程无忧"></a>
        <img class="slogen" id="slogen" width="162" height="17" src="//img01.51jobcdn.com/im/2016/header/slogen.png?1537326688">
        <p class="nlink">
            <a class="" href="homePage">首页</a>
        </p>
    </div>
</div>
<div class="mt">
    <ul class="mt_l">
        <li class="on">简历中心</li>
    </ul>
</div>
<div class="rbox">
    <div class="tit">
        <ul class="clearfix">
            <li class="l1">简历名称</li>
            <li class="l3">操作</li>
        </ul>
    </div>
    <div id="resume_82244630" class="rli" special-type="">
    </div>
    <input type="button" id="submit" value="提交">
    <input type="button" id="cancel" value="取消">
</div>
</body>
<script src="/js/jquery-3.2.1.js"></script>
<script>
    $(function () {
            $.ajax({
                type:"post",
                url:"resumeData",
                data:{},
                success:function (data) {
                    if (data==200){
                        var html = ""
                        <c:forEach items="${sessionScope.resumeList}" var="resumeList">
                        html+= "<input type=radio value='${resumeList.id}'>"
                        html+= "<input type='hidden' name='resumetype' value='0'>"
                        html+=  "<ul class='clearfix'>"
                        html+=  "<li class='l1'>"
                        html+=  "<a title='我的简历1' href='//i.51job.com/resume/standard_resume.php?lang=c&amp;resumeid=82244630'>${resumeList.nameResume}</a>"
                        html+=  "</li>"
                        html+=  "<li class='l3'>"
                        html+= "<a class='a' href='selectResume?id=${resumeList.id}'>编辑</a>&nbsp;&nbsp;|&nbsp;&nbsp;"
                        html+=  "</li>"
                        html+=  "</ul>"
                        </c:forEach>
                        $("#resume_82244630").html(html)
                    }else{
                        var html = "<h3>您还没有简历哦！！赶快去新建吧！</h3>"
                        $("#resume_82244630").html(html)
                    }
//                    实现页面只刷新一次
                    if(location.href.indexOf("#reloaded")==-1){
                        location.href=location.href+"#reloaded";
                        location.reload();
                    }
                }
            })

//    提交
        $("#submit").click(function () {
            var resumeId = ""
            if($("input[type=radio]").prop("checked") == true){
                resumeId = $("input[type=radio]").val()
            }
            $.ajax({
                type:"post",
                url:"handInResume",
                data:{"resumeId":resumeId},
                success: function(data) {
                    if (data ==200 ){
                        alert("投递成功")
                    }else {
                        alert("投递失败")
                    }
                    location.href ="homePage"
                }
            })

        })
        $("#cancel").click(function () {
            location.href ="homePage"
        })

    })
</script>
</html>
