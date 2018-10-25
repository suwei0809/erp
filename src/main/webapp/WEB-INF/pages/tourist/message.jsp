<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/24
  Time: 14:35
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
    <link rel="stylesheet" type="text/css" href="/css/panel-pop.css">
    <link rel="stylesheet" type="text/css" href="/css/form.css">
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript">
        $(function(){
            for(var i=0;i<$(".b").length;i++){
                $(".b").click(function(){
                    $.ajax({
                        type:"post",
                        url:"interviewMessageData",
                        data:{
                            "id":$(this).attr("id")
                        },
                        success:function (data) {
                            if (data==200){
                                $(".layer_class").fadeIn(200);
                            }
                        }
                    })
                });
                $(".layer_class a").click(function(){
                    $(".layer_class").fadeOut(200);
                });

                $(".p_but").click(function(){
                    $.ajax({
                        type:"post",
                        url:"toInterview",
                        data:{
                        },
                        success:function (data) {
                            if (data==200){
                                alert("确认成功")
                                $(".layer_class").fadeOut(100);
                            }
                        }
                    })
                });

                $(".cancel").click(function(){
                    $(".layer_class").fadeOut(100);
                });
            }
        });
    </script>
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
        <li class="on">消息中心</li>
    </ul>
    <ul class="mt_r">
        <li>
            <a class="r a" track-type="trackButtonClick" event-type="5" target="_blank" href="touristMessagePage">消息中心</a>
        </li>

        <li>
            <a class="a" href="addResumePage" id="createResume" track-type="trackButtonClick" event-type="3">创建简历</a>
        </li>
    </ul>
</div>
<div class="rbox">
    <div class="tit">
        <ul class="clearfix">
            <li class="l1">标题</li>
            <li class="l2">内容</li>
            <li class="l2">状态</li>
            <li class="l3">操作</li>
        </ul>
    </div>
    <c:forEach items="${sessionScope.touristMessage}" var="message">
    <div id="resume_82244630" class="rli" special-type="">
        <input type="hidden" name="resumetype" value="0">
        <ul class="clearfix">
            <c:if test="${message.statu==2}">
            <li class="l1">
                <a title="我的简历1" href="//i.51job.com/resume/standard_resume.php?lang=c&amp;resumeid=82244630">面试邀请</a>
            </li>
            </c:if>
            <c:if test="${message.statu==3}">
                <li class="l1">
                    <a title="我的简历1" href="//i.51job.com/resume/standard_resume.php?lang=c&amp;resumeid=82244630">录用通知</a>
                </li>
            </c:if>
            <li class="l2 selt">
                <span class="sval" value="0">${message.message}</span>
            </li>
            <c:if test="${message.flag==1}">
                <li class="l2">未读</li>
            </c:if>
            <c:if test="${message.flag==2}">
                <li class="l2">已读</li>
            </c:if>
            <li class="l3">
                    <a class="b" id="${message.id}" href="javascript:;">查看</a>
            </li>
        </ul>
    </div>
    </c:forEach>
</div>

<div id="layer_id" class="layer_class" init="true" style="position: absolute; z-index: 500; left: 461px; top: 130px;">
    <div class="panel_lnp panel_py panel_ct3">
        <h2><a class="layer_close" href="javascript:;"><i></i></a></h2>
        <div class="pannel_con">
            <div class="panel_boxtab" style="display:none;">
                <p> <span></span><span></span></p>
            </div>
            <div class="inner10">
                <div class="iel">
                   ${sessionScope.tourist.touristName}：您好！
                </div>
                <div class="iel">
                    首先非常感谢您对我司的关注！
                </div>
                <div class="iel">
                    我们已经仔细查阅过您的简历，经过初步评估，认为您非常合公司的职位要求。
                    现邀请您到我公司参加面试，届时请带上个人作品准时参加。如有任何问题可随时与我联系！谢谢！
                </div>
                <div class="iel"> 面试职位：${sessionScope.newRecruit.job}</div>
                <div class="iel"> 面试时间：${sessionScope.newInterview.idate}</div>
                <div class="iel"> 面试地点：${sessionScope.newInterview.place}</div>
            </div>
        </div>
        <div class="but_box b2"> <span class="p_but" onclick="javascript:;">确认</span> </div>
    </div>
</div>

</body>


</html>
