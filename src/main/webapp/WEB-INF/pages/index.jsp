<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/19
  Time: 14:47
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
    <meta charset="UTF-8">
    <title>【职坐标】IT职业教育培训_高端IT培训中心_IT在线教育平台-海同科技</title>
    <meta name="keywords" content="IT教育,IT培训,职业教育,IT在线教育,职坐标,海同科技">
    <meta name="description" content="【职坐标】是海同科技旗下专业的IT在线教育平台,汇聚了一大批国内外IT技术领域的资深师资力量,为您提供Java、Python、H5、嵌入式、Android、IOS、数据库等IT职业教育培训,推出了参加海同高端IT培训100%推荐就业的服务承诺。">
    <link rel="stylesheet" type="text/css" href="/css/index.css"/>
</head>
<body>
<div class="h_top">
    <div class="layout">
        <ul class="h_top_l">
            <li><a href="http://www.zhizuobiao.com" target="_blank">海同科技</a>，欢迎你！</li>
            <li>
                <a href="">IT知识库</a>
                <p>
                    <a href="http://knowledge.zhizuobiao.com" target="_blank">知识首页</a>
                    <a href="http://program.zhizuobiao.com" target="_blank">编程语言</a>
                    <a href="http://web.zhizuobiao.com" target="_blank">WEB前端</a>
                    <a href="http://shouji.zhizuobiao.com" target="_blank">移动开发</a>
                    <a href="http://design.zhizuobiao.com" target="_blank">设计创作</a>
                    <a href="http://data.zhizuobiao.com" target="_blank">数据库</a>
                    <a href="http://test.zhizuobiao.com" target="_blank">软件测试</a>
                    <a href="http://operation.zhizuobiao.com" target="_blank">系统运维</a>
                    <a href="http://software.zhizuobiao.com" target="_blank">常用软件</a>
                </p>
            </li>
            <li>
                <a href="">IT技能培训</a>
                <p>
                    <a href="http://www.zhizuobiao.com/course/plan" target="_blank">IT岗位培训</a>
                    <a href="http://ban.zhizuobiao.com" target="_blank">就业培训班</a>
                    <a href="http://openclass.zhizuobiao.com" target="_blank">免费公开课</a>
                    <a href="http://course.zhizuobiao.com" target="_blank">IT课程库</a>
                </p>
            </li>
            <li>
                <a href="">IT直通车</a>
                <p>
                    <a href="http://about.zhizuobiao.com/gaoxiao/" target="_blank">高校直通车</a>
                    <a href="http://about.zhizuobiao.com/qiye/" target="_blank">企业直通车</a>
                    <a href="http://about.zhizuobiao.com/zhaopin/" target="_blank">求职直通车</a>
                    <a href="http://university.zhizuobiao.com" target="_blank">项目直通车</a>
                </p>
            </li>
        </ul>
        <ul class="h_top_r">
            <li class="header_login">
                <a href="http://pass.zhizuobiao.com/register/" target="_blank">注册</a>
                <a href="http://pass.zhizuobiao.com/" target="_blank">登录</a>
            </li>
            <li>
                <a href="http://www.zhizuobiao.com/university/" target="_blank">高校登录</a>
            </li>
            <li>
                <a href="http://sitemap.zhizuobiao.com" target="_blank">网站导航</a>
            </li>
            <li class="h_top_icon">
                <a class="h_top_app" href="http://app.zhizuobiao.com" target="_blank"></a>
                <a class="h_top_i" href="">
					<span>
						<img src="http://iotekcdn.b0.upaiyun.com/php/index/img/app_l.png">
						<em>职坐标手机站</em>
					</span>
                </a>
                <a class="h_top_q" href="tencent://message/?uin=3462263445&amp;Site=400301.com&amp;Menu=yes"></a>
                <a class="h_top_w" href="">
					<span>
						<img src="http://iotekcdn.b0.upaiyun.com/php/index/img/gzh.jpg">
						<em>职坐标公众号</em>
					</span>
                </a>
            </li>
        </ul>
    </div>
</div>
</body>
</html>
