<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/20
  Time: 15:51
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
</head>
<body>
<div class="nag">
    <div class="in">
        <a href="//www.51job.com"><img class="logo" width="116" height="46" src="//img04.51jobcdn.com/im/2016/logo/logo_20jubilee_116x46.png" alt="前程无忧"></a>
        <img class="slogen" width="162" height="17" src="//img06.51jobcdn.com/im/2016/header/slogen.png" alt="好工作尽在前程无忧">
        <p class="nlink n2">
            <a href="homePage">首页</a>
            <a href="//i.51job.com/userset/my_51job.php">我的51job</a>
            <a href="resumePage">简历中心</a>
        </p>
    </div>
</div>
<form>
    <table border="1px" cellspacing="0" cellpadding="10">
        <tr>
            <td>给简历起个名字：</td>
            <td contentEditable="true" id="nameresume">${sessionScope.resumeId.nameResume}</td>
        </tr>
        <tr>
            <td height="76px" width="104" >姓名</td>
            <td width="94" height="77" contentEditable="true" id="name">${sessionScope.resumeId.name}</td>
            <td height="76px" width="104">性别</td>
            <td width="94" height="77"  contentEditable="true" id="sex">${sessionScope.resumeId.reSex}</td>
            <td height="76px" width="104">出生年月</td>
            <td width="94" height="77"  contentEditable="true" id="birth">${sessionScope.resumeId.birth}</td>
            <td rowspan="4" width="145" height="315"><input type="file"/></td>
        </tr>
        <tr>
            <td height="76px" width="104">籍贯</td>
            <td  contentEditable="true" id="hometown">${sessionScope.resumeId.hometown}</td>
            <td height="76px" width="104">民族</td>
            <td  contentEditable="true" id="nation">${sessionScope.resumeId.nation}</td>
            <td height="76px" width="104">政治面貌</td>
            <td  contentEditable="true" id="polity">${sessionScope.resumeId.polity}</td>
        </tr>
        <tr>
            <td height="76px" width="104">学历</td>
            <td  contentEditable="true" id="education">${sessionScope.resumeId.education}</td>
            <td height="76px" width="104">身高</td>
            <td  contentEditable="true" id="height">${sessionScope.resumeId.height}</td>
            <td height="76px" width="104">体重</td>
            <td  contentEditable="true" id="weight">${sessionScope.resumeId.weight}</td>
        </tr>
        <tr>
            <td height="76px" width="104">专业</td>
            <td colspan="3"  contentEditable="true" id="major">${sessionScope.resumeId.major}</td>
            <td height="76px" width="104">婚否</td>
            <td  contentEditable="true" id="marry">${sessionScope.resumeId.marry}</td>
        </tr>
        <tr>
            <td height="76px" width="104">毕业院校</td>
            <td colspan="3"  contentEditable="true" id="school">${sessionScope.resumeId.school}</td>
            <td height="76px" width="104">邮箱</td>
            <td colspan=" 3"  contentEditable="true" id="email">${sessionScope.resumeId.email}</td>
        </tr>
        <tr>
            <td height="76px" width="104">联系电话</td>
            <td colspan="3"  contentEditable="true" id="phone">${sessionScope.resumeId.phone}</td>
            <td height="76px" width="104">现住地址</td>
            <td colspan="3"  contentEditable="true" id="addr">${sessionScope.resumeId.addr}</td>
        </tr>
        <tr>
            <td height="439" width="104">个人履历</td>
            <td colspan="6" valign="top"  contentEditable="true" id="perresume">${sessionScope.resumeId.perresume}</td>
        </tr>

        <tr>
            <td height="76" width="104">自我评价</td>
            <td colspan="6"  contentEditable="true" id="sel">${sessionScope.resumeId.sel}</td>
        </tr>
    </table>
    <div>
        <input type="button" id="sub" value="保存"/>
        <input type="button" id="no" value="取消">
    </div>
</form>
</body>
<script src="/js/jquery-3.2.1.js"></script>
<script>
    $(function () {
        $("#sub").click(function () {
            var name = $("#name").text()
            var reSex  = $("#sex").text()
            var birth = $("#birth").text()
            var hometown = $("#hometown").text()
            var nation = $("#nation").text()
            var polity = $("#polity").text()
            var education = $("#education").text()
            var height = $("#height").text()
            var weight = $("#weight").text()
            var major = $("#major").text()
            var marry = $("#marry").text()
            var school = $("#school").text()
            var email = $("#email").text()
            var phone = $("#phone").text()
            var addr = $("#addr").text()
            var perresume = $("#perresume").text()
            var sel = $("#sel").text()
            var nameResume = $("#nameresume").text()
            $.ajax({
                type:"post",
                url:"editResume",
                data:JSON.stringify({
                    "name":name,
                    "reSex":reSex,
                    "birth":birth,
                    "hometown":hometown,
                    "nation":nation,
                    "polity":polity,
                    "education":education,
                    "height":height,
                    "weight":weight,
                    "major":major,
                    "marry":marry,
                    "school":school,
                    "email":email,
                    "phone":phone,
                    "addr":addr,
                    "perresume":perresume,
                    "sel":sel,
                    "nameResume":nameResume,
                    "id":${sessionScope.resumeId.id}
                }),
                contentType: 'application/json; charset=utf-8',
                success:function (data) {
                    if (data==200){
                        location.href = "resumePage"
                    }
                }

            })

        })

        $("#no").click(function () {
            location.href ="resumePage"
        })
    })
</script>
</html>
