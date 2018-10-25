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

//            弹框设置
            $("#sub").click(function(){
                $(".tip").fadeIn(200);
            });
            $(".tiptop a").click(function(){
                $(".tip").fadeOut(200);
            });

            $(".sure").click(function(){
                $.ajax({
                    type:"post",
                    url:"sendInterviewMessage",
                    data:{
                        "resumeId":${requestScope.recruitResume.resumeId},
                        "messageId": ${requestScope.message.id},
                        "idate":$("#idate").val(),
                        "place":$("#place").val()
                    },
                    success:function (data) {
                        if (data==200){
                            alert("面试通知发送成功！")
                        }else {
                            alert("您已经发送过了！")
                        }
                    }
                }),
                    $(".tip").fadeOut(100);
                    location.reload()
            });
            $(".cancel").click(function(){
                $(".tip").fadeOut(100);
            });
            $("#no").click(function(){
                location.href = "lookMessage"
            });

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
        <div class="tools">
            <ul class="toolbar">
                <li class="click" id="sub"><span><img src="images/t01.png" /></span>邀请面试</li>
                <li class="click" id="no"><span><img src="images/t02.png" /></span>修改</li>
            </ul>
        </div>
        <div class="resume" style="border: 1px black solid; height: 608px;">
        <ul class="classlist">
            <ul>
                <li>
                    <span height="76px" width="104">姓名</span>
                    <span width="94" height="77" id="name">${sessionScope.resumeId.name}</span>
                </li>
                <li>
                    <span height="76px" width="104">性别</span>
                    <span width="94" height="77" id="sex">${sessionScope.resumeId.reSex}</span>
                </li>
                <li>
                    <span height="76px" width="104">出生年月</span>
                    <span width="94" height="77" id="birth">${sessionScope.resumeId.birth}</span>
                </li>
            </ul>
            <ul>
                <li>
                    <span height="76px" width="104">籍贯</span>
                    <span id="hometown">${sessionScope.resumeId.hometown}</span>
                </li>

                <li>
                    <span height="76px" width="104">民族</span>
                    <span id="nation">${sessionScope.resumeId.nation}</span>
                </li>
                <li>
                    <span height="76px" width="104">政治面貌</span>
                    <span id="polity">${sessionScope.resumeId.polity}</span>
                </li>
            </ul>
            <ul>
                <li>
                    <span height="76px" width="104">学历</span>
                    <span id="education">${sessionScope.resumeId.education}</span>
                </li>
                <li>
                    <span height="76px" width="104">身高</span>
                    <span id="height">${sessionScope.resumeId.height}</span>
                </li>
                <li>
                    <span height="76px" width="104">体重</span>
                    <span id="weight">${sessionScope.resumeId.weight}</span>
                </li>
            </ul>
            <ul>
                <li>
                    <span height="76px" width="104">专业</span>
                    <span colspan="3" id="major">${sessionScope.resumeId.major}</span>
                </li>
                <li>
                    <span height="76px" width="104">婚否</span>
                    <span id="marry">${sessionScope.resumeId.marry}</span>
                </li>
                <li>
                    <span height="76px" width="104">毕业院校</span>
                    <span colspan="3" id="school">${sessionScope.resumeId.school}</span>
                </li>
            </ul>
            <ul>
                <li>
                    <span height="76px" width="104">邮箱</span>
                    <span colspan=" 3" id="email">${sessionScope.resumeId.email}</span>
                </li>
                <li>
                    <span height="76px" width="104">联系电话</span>
                    <span colspan="3" id="phone">${sessionScope.resumeId.phone}</span>
                </li>
                <li>
                    <span height="76px" width="104">现住地址</span>
                    <span colspan="3" id="addr">${sessionScope.resumeId.addr}</span>
                </li>
            </ul>
            <ul>
                <li>
                    <span height="439" width="104">个人履历</span>
                    <span colspan="6" valign="top" id="perresume">${sessionScope.resumeId.perresume}</span>
                </li>
            </ul>
            <ul>
                <li>
                    <span height="76" width="104">自我评价</span>
                    <span colspan="6" id="sel">${sessionScope.resumeId.sel}</span>
                </li>
            </ul>
        </ul>
        </div>
        </div>

    <div class="tip">
        <div class="tiptop"><span>提示信息</span><a></a></div>
        <div class="tipinfo">
            <span><img src="images/ticon.png" /></span>
            <div class="tipright">
                <div style="    " >
                    面试地点:<input type="text" style="height: 20px;width: 180px;border:0.5px solid #378888;font-size:12px" id="place" value="">
                </div>
                <div style="margin-top: 10px">
                    面试时间:<input type="text" style="height: 20px;width: 180px;border:0.5px solid #378888;font-size:12px" id="idate" value="">
                </div>
            </div>
        </div>
        <div class="tipbtn">
            <input name="" type="button"  class="sure" value="确定" />&nbsp;
            <input name="" type="button"  class="cancel" value="取消" />
        </div>
    </div>
    </div>

</div>


</body>
</html>