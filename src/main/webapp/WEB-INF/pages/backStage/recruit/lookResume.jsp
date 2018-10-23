<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/23
  Time: 18:32
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
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="js/jquery.js"></script>
    <script type="text/javascript">
        $(function(){
            //顶部导航切换
            $(".nav li a").click(function(){
                $(".nav li a.selected").removeClass("selected")
                $(this).addClass("selected");
            })
            //导航切换
            $(".menuson .header").click(function(){
                var $parent = $(this).parent();
                if(!!$(this).next('.sub-menus')){
                    if($parent.hasClass("open")){
                        $parent.removeClass("open").find('.sub-menus').hide();
                    }else{
                        $parent.addClass("open").find('.sub-menus').show();
                    }
                }
            });
            // 三级菜单点击
            $('.sub-menus li').click(function(e) {
                $(".sub-menus li.active").removeClass("active")
                $(this).addClass("active");
            });

            $('.title').click(function(){
                var $ul = $(this).next('ul');
                $('dd').find('.menuson').slideUp();
                if($ul.is(':visible')){
                    $(this).next('.menuson').slideUp();
                }else{
                    $(this).next('.menuson').slideDown();
                }
            });


            $("#sub").click(function () {
                $.ajax({
                    type:"post",
                    url:"",
                    data:{
                        "resumeId":${requestScope.recruitResume.resumeId},
                        "messageId": ${requestScope.message.id}
                    },
                    success:function (data) {
                        if (data==200){
                            alert("面试通知已发送！！")
                        }else {
                            alert("您已经发送过了！")
                        }
                    }
                })
            })

            $("#no").click(function () {
                location.href ="messagePage"
            })
        })
    </script>
</head>
<body>
<div class="top">
    <jsp:include page="../publicPages/top.jsp"/>
</div>
<div class="left">
    <jsp:include page="../publicPages/left.jsp"/>
</div>
<div class="footer">
    <jsp:include page="../publicPages/footer.jsp"/>
</div>
<div class="index">
    <div class="rightinfo">
<form id="table">
    <table border="1px" cellspacing="1" cellpadding="10">
        <tr>
            <td height="76px" width="104" >姓名</td>
            <td width="94" height="77" id="name">${sessionScope.resumeId.name}</td>
            <td height="76px" width="104">性别</td>
            <td width="94" height="77" id="sex">${sessionScope.resumeId.reSex}</td>
            <td height="76px" width="104">出生年月</td>
            <td width="94" height="77" id="birth">${sessionScope.resumeId.birth}</td>
            <td rowspan="4" width="145" height="315"><input type="file"/></td>
        </tr>
        <tr>
            <td height="76px" width="104">籍贯</td>
            <td  id="hometown">${sessionScope.resumeId.hometown}</td>
            <td height="76px" width="104">民族</td>
            <td   id="nation">${sessionScope.resumeId.nation}</td>
            <td height="76px" width="104">政治面貌</td>
            <td id="polity">${sessionScope.resumeId.polity}</td>
        </tr>
        <tr>
            <td height="76px" width="104">学历</td>
            <td  id="education">${sessionScope.resumeId.education}</td>
            <td height="76px" width="104">身高</td>
            <td  id="height">${sessionScope.resumeId.height}</td>
            <td height="76px" width="104">体重</td>
            <td  id="weight">${sessionScope.resumeId.weight}</td>
        </tr>
        <tr>
            <td height="76px" width="104">专业</td>
            <td colspan="3" id="major">${sessionScope.resumeId.major}</td>
            <td height="76px" width="104">婚否</td>
            <td id="marry">${sessionScope.resumeId.marry}</td>
        </tr>
        <tr>
            <td height="76px" width="104">毕业院校</td>
            <td colspan="3" id="school">${sessionScope.resumeId.school}</td>
            <td height="76px" width="104">邮箱</td>
            <td colspan=" 3" id="email">${sessionScope.resumeId.email}</td>
        </tr>
        <tr>
            <td height="76px" width="104">联系电话</td>
            <td colspan="3" id="phone">${sessionScope.resumeId.phone}</td>
            <td height="76px" width="104">现住地址</td>
            <td colspan="3" id="addr">${sessionScope.resumeId.addr}</td>
        </tr>
        <tr>
            <td height="439" width="104">个人履历</td>
            <td colspan="6" valign="top" id="perresume">${sessionScope.resumeId.perresume}</td>
        </tr>

        <tr>
            <td height="76" width="104">自我评价</td>
            <td colspan="6" id="sel">${sessionScope.resumeId.sel}</td>
        </tr>
    </table>
    <div>
        <input type="button" id="sub" value="邀请面试"/>
        <input type="button" id="no" value="返回">
    </div>
</form>
    </div>
</div>
</body>
</html>