<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>个人设置</title>
<link rel="stylesheet" type="text/css"
	href="css/studentSetting-style.css">
<script src="js/jquery-2.2.0.min.js"></script>
<script src="js/divjs.js"></script>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<link type="text/css" rel="stylesheet"
	href='http://fonts.googleapis.com/css?family=Ubuntu:300italic,300,700' />
<link type="text/css" rel="stylesheet" href="css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="css/flexslider.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<script>
        jQuery(document).ready(function ($) {
            $('.theme-login').click(function () {
                $('.theme-popover-mask').fadeIn(100);
                $('.theme-popover').slideDown(200);
            })
            $('.theme-poptit .close').click(function () {
                $('.theme-popover-mask').fadeOut(100);
                $('.theme-popover').slideUp(200);
            })

        })
    </script>

<script type="text/javascript">
        (function () {

            var time = null;
            var list = $("#navlist");
            var box = $("#navbox");
            var lista = list.find("a");

            for (var i = 0, j = lista.length; i < j; i++) {
                if (lista[i].className == "now") {
                    var olda = i;
                }
            }

            var box_show = function (hei) {
                box.stop().animate({
                    height: hei,
                    opacity: 1
                }, 400);
            }

            var box_hide = function () {
                box.stop().animate({
                    height: 0,
                    opacity: 0
                }, 400);
            }

            lista.hover(function () {
                lista.removeClass("now");
                $(this).addClass("now");
                clearTimeout(time);
                var index = list.find("a").index($(this));
                box.find(".cont").hide().eq(index).show();
                var _height = box.find(".cont").eq(index).height() + 54;
                box_show(_height)
            }, function () {
                time = setTimeout(function () {
                    box.find(".cont").hide();
                    box_hide();
                }, 50);
                lista.removeClass("now");
                lista.eq(olda).addClass("now");
            });

            box.find(".cont").hover(function () {
                var _index = box.find(".cont").index($(this));
                lista.removeClass("now");
                lista.eq(_index).addClass("now");
                clearTimeout(time);
                $(this).show();
                var _height = $(this).height() + 54;
                box_show(_height);
            }, function () {
                time = setTimeout(function () {
                    $(this).hide();
                    box_hide();
                }, 50);
                lista.removeClass("now");
                lista.eq(olda).addClass("now");
            });

        })();
    </script>

</head>
<body>


	<s:include value="head.jsp"></s:include>
	<div class="space"></div>
	<div class="personalTitle">
		<div class="personalTitle_center">
			<div class="mySpace"></div>
			<div class="myImg">
				<a href=""><img src="image/20_big.jpg"></a>
			</div>
			<span class="userName"> <font class="userName-font"><s:property
						value="#session.student.username" /></font> <font class="discipline">专业：</font>
				<font class="discipline-name"><s:property
						value="#session.student.major.majorName" /></font>
			</span>
		</div>
	</div>
	<div class="personalCenter">
		<div class="personalCenter_body">
			<div class="study">


				<div>
					<font>学习</font>
				</div>

			</div>
		</div>


	</div>
	<div class="learnCourse">

		<div class="leanrtitle">
			<div class="learing_space"></div>
			<div class="learing">个人信息</div>
			<div class="learntitleBorder">
				<div class="learntitleBorder_body"></div>

			</div>
		</div>


		<div class="settingBody">
			<form action="modify" method="post">
				<div class="settingLable">
					<ul>
						<li>姓</li>
						<li>名</li>
						<li>邮箱</li>
						<li>原始密码</li>
						<li>新密码</li>
						<li>确认新密码</li>
					</ul>
				</div>
				<div class="settingForm">
					<ul>
						<li><input type="text" name="firstName" id=""
							value="<s:property value="#session.student.firstName"/>">
						</li>
						<li><input type="text" name="lastName" id=""
							value="<s:property value="#session.student.lastName"/>">
						</li>
						<li><input type="text" name="email" id=""
							value="<s:property value="#session.student.email"/>"></li>
						<li><input type="password" name="orginPassword" id="">
						</li>
						<li><input type="password" name="newPassword" id="">
						</li>
						<li><input type="password" name="confimPassword" id="">
						</li>
					</ul>

				</div>
				<div class="settingSubmit">
					<input type="submit" value="保存"></input>
				</div>
			</form>
		</div>
		<div class="course_buttom"></div>

	</div>
	<%-- <div class="copyright">
    <div class="leftspace">
    </div>
    <div class="center">
        <div class="copyright-space"></div>
        版权所有 ©2016 常熟理工学院<br>
        苏ICP备05026756号 Version 1.0.0 release201602.14
    </div>
    <div class="rightspace">

    </div>

</div>

<div class="top-buttom">
    <div class="gotop"><a href="#top" title="返回顶部"><img src="image//gotop.png"></a></div>
    <div class="gobuttom"><a href="feedback//feedback.html" title="意见反馈"><img src="image//fankui.png"></a></a></div>
</div>
<div class="theme-popover">
    <div class="theme-poptit">
        <a href="javascript:;" title="关闭" class="close">×</a>
        <h2 style="color: white">登&nbsp;&nbsp;录</h2>
    </div>
    <div class="theme-popbod dform">
        <form class="theme-signin" name="loginform" action="" method="post">
            <ol>

                <li><strong></strong><input placeholder="用户名/邮箱/手机" class="ipt" type="text" name="log"
                                            value="lanrenzhijia" size="20"/></li>
                <p>&nbsp;</p>

                <li><strong></strong><input placeholder="密码" class="ipt" type="password" name="pwd" value="***"
                                            size="20"/></li>
                <p></p>
                <p></p>
                <li><input class="btn btn-primary" type="submit" name="submit" value=" 登 录 "/></li>
            </ol>
        </form>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;
        &nbsp; &nbsp;<a>忘记密码？</a>
    </div>
</div>
<div class="theme-popover-mask"></div>
<input type="file" >
 --%>
	<s:include value="copyright.jsp"></s:include>
</body>
</html>