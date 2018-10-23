<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/19
  Time: 14:47
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
    <meta charset="UTF-8">
    <title>【职坐标】IT职业教育培训_高端IT培训中心_IT在线教育平台-海同科技</title>
    <meta name="keywords" content="IT教育,IT培训,职业教育,IT在线教育,职坐标,海同科技">
    <meta name="description" content="【职坐标】是海同科技旗下专业的IT在线教育平台,汇聚了一大批国内外IT技术领域的资深师资力量,为您提供Java、Python、H5、嵌入式、Android、IOS、数据库等IT职业教育培训,推出了参加海同高端IT培训100%推荐就业的服务承诺。">
    <link rel="stylesheet" type="text/css" href="/css/index.css"/>
    <link rel="stylesheet" type="text/css" href="/css/common.css"/>
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
                    <a href="#" target="_blank">IT岗位培训</a>
                    <a href="#" target="_blank">就业培训班</a>
                    <a href="#" target="_blank">免费公开课</a>
                    <a href="#" target="_blank">IT课程库</a>
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
            <li class="header_login" id="login">
                <a href="registerPage" target="_blank">注册</a>
                <a href="loginPage"  target="_blank">登录</a>
            </li>
            <li>
               <span  style="cursor:pointer" id="resume">简历中心</span>
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

<div class="zwlb_con">
    <div class="zwlb_zj">
        <div style="clear:both;"></div>
        <div class="zwlb_zj_right">
            <legend><b><font class="f14">分类浏览职位</font></b>&nbsp;
                <a class="f12" style="COLOR: #666" href="#">分类细致搜索</a>
            </legend>
            <form name="formsearch" id="formsearch" style="margin:0px;" method="post" action="https://www.telecomhr.com/jobs">
                <select name="bc" size="1" id="classify" class="basic" style="width:185px;">
                    <option value="" selected="selected">--请选择职位类别(大类)--</option>
                    <option value="2083">通信经营管理类</option>
                </select>
                <select name="sc" id="job" class="basic" style="width:185px;">
                    <option value="" selected="selected">--请选择职位类别(小类)--</option>
                </select>
                <select name="jobarea" size="1" id="jobarea" class="basic w160">
                    <option value="">--请选择工作地点--</option>
                    <option value="1000">北京市</option>
                </select>

                <span class="sr">输入关键字:
                	<input type="text" name="keyword" style="width:210px;height:27px;background-color:#FFFFFF;color:#000000;border:1px solid #000000" size="15" maxlength="14">
                </span>
                <a class="tyan4 tyan tyan_floating" onclick="$('#formsearch').submit();">浏览职位</a>

            </form>

        </div>
    </div>
    <div class="zwlb" style="width:99%; margin:0 auto">

        <table width="100%" class="joblist">
            <tbody>
            <tr>

                <th width="29%">招聘职位</th>
                <th width="11%">招聘人数</th>
                <th width="9%">学历要求</th>
                <th width="9%">工作经验</th>
                <%--<th width="9%">工作地点</th>--%>
                <th width="11%">发布日期</th>
            </tr>
            <tr id="essential">
            </tr>
            <tr bordercolor="#CCCCCC" bgcolor="#f8f8f8" id="detailed">
            </tr>
            <tr>
                <td colspan="6" style="text-align:right">
                    <div class="p">
                        <a>&nbsp;21748&nbsp;</a>
                        <a>&nbsp;1/725&nbsp;</a><strong>1</strong>
                        <a href="https://www.telecomhr.com/zhuanti/wangyourencai/2">2</a>
                        <a href="https://www.telecomhr.com/zhuanti/wangyourencai/3">3</a>
                        <a href="https://www.telecomhr.com/zhuanti/wangyourencai/4">4</a>
                        <a href="https://www.telecomhr.com/zhuanti/wangyourencai/5">5</a>
                        <a href="https://www.telecomhr.com/zhuanti/wangyourencai/6">6</a>
                        <a href="https://www.telecomhr.com/zhuanti/wangyourencai/7">7</a>
                        <a href="https://www.telecomhr.com/zhuanti/wangyourencai/8">8</a>
                        <a href="https://www.telecomhr.com/zhuanti/wangyourencai/9">9</a>
                        <a href="https://www.telecomhr.com/zhuanti/wangyourencai/10">10</a>
                        <a href="https://www.telecomhr.com/zhuanti/wangyourencai/2">››</a>
                        <a href="https://www.telecomhr.com/zhuanti/wangyourencai/725">›|</a>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>


</body>
<script src="/js/jquery-3.2.1.js"></script>
<script>
    $(function () {
        $.ajax({
            type:"post",
            url:"recruitDate",
            data:{},
            success: function (data) {
                if (data==200){
                    var html =""
                    var htmlde = ""
                    <c:forEach items="${sessionScope.recruits}" var="recruit">
                    html+="<input type='hidden' value='${recruit.id}' >"
                    html+= " <td width='29%' align='left' style='font-size:14px;'>"
                    html+="<a href='https://www.telecomhr.com/job-111916.html' target='_blank' title='${recruit.job}'><strong style='color: #C00; font-size:16px;'>${recruit.job}</strong></a>"
                    html+="</td>"
                    html+="<td width='31%' align='center' style='font-size:14px;'>"
                    html+="<a href='https://www.telecomhr.com/company-45074.html' target='_blank' title=''><strong>${recruit.pnumber}</strong></a>"
//                    html+="<img src='https://www.telecomhr.com/images/picq_rztg.png' title='金牌认证企业，请放心投递'>"
                    html+="</td>"
                    html+="<td width='11%' align='center'>${recruit.education}</td>"
                    html+="<td width='9%' align='center'>${recruit.experience}</td>"
//                    html+="<td width='9%' align='center'>experience</td>"
                    html+="<td width='11%' align='center'>${recruit.beginDate}</td>"
                    htmlde+="<td colspan='6' align='left'>"
                    htmlde+="<div style='float:right; width:140px;'>"
                    htmlde+="<a href='selectResumePage?id=${recruit.id}' class='btn2 btnsF12' style=' float:left'>应聘</a>"
//                    htmlde+="<a href='javascript:;' class='mbtn btn1 btnsF12' id='btnFav_bf' onclick='ShowWindow('alertmessWindow','alertpromptWindow','https://www.telecomhr.com/person/operation.php?action=addfav&amp;jid=111916','#CCCCCC');' style=' float:left'>收藏</a>"
                    htmlde+="</div>"
                    htmlde+=" <strong>工作地点</strong>： ${recruit.place}"
                    htmlde+="<br>"
                    htmlde+= "<strong>联系方式</strong>： ${recruit.contact}<br>"
                    htmlde +="<strong>薪资待遇</strong>： ${recruit.salary}"
                    htmlde+="<br>"
                    htmlde+="<strong>职位描述：</strong><br>"
                    htmlde+="<div style='padding-left:30px'>${recruit.require}</div>"
                    htmlde+="<a href='https://www.telecomhr.com/job-111916.html' style='color:#06F' target='_blank'>详细&gt;&gt;&gt;</a>"
                    htmlde+="</td>"
                    </c:forEach>
                    $("#essential").html(html)
                    $("#detailed").html(htmlde)
//                    实现页面只刷新一次
                    if(location.href.indexOf("#reloaded")==-1){
                        location.href=location.href+"#reloaded";
                        location.reload();
                    }
                }
            }

        })



        <c:if test="${sessionScope.tourist != null}">
        $("#login").html("<a href='#' id=''>${sessionScope.tourist.touristName}</a>")
        </c:if>
        $("#resume").click(function () {
            $.ajax({
                type:"post",
                url:"checkLogin",
                data:{},
                success:function (data) {
                    if (data==200){
                        location.href="resumePage"
                    }else {
                       if (confirm('您还未登陆，请先登陆？')){
                           location.href="loginPage"
                       }else{
                           location.href="homePage"
                       }
                    }
                }
            })
        })






    })
</script>

</html>

