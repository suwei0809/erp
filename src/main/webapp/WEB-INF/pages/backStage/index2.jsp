<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/23
  Time: 10:22
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
//		$(".menuson>li.active").not($parent).removeClass("active open").find('.sub-menus').hide();
//
//		$parent.addClass("active");
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

        })
    </script>
</head>
<body>
<div class="top">
    <jsp:include page="publicPages/top.jsp"/>
</div>
<div class="left">
    <jsp:include page="publicPages/left.jsp"/>
</div>
<div class="footer">
    <jsp:include page="publicPages/footer.jsp"/>
</div>
<div class="index">
    <jsp:include page="publicPages/index.jsp"/>
</div>

</body>
</html>
