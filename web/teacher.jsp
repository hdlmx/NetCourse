<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>${teacher.firstName }${teacher.lastName }-${teacher.institute.instituteName}</title>
<link rel="stylesheet" type="text/css" href="css/teacher-style.css">
<link rel="stylesheet" type="text/css" href="css/head.css">
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
	jQuery(document).ready(function($) {
		$('.theme-login').click(function() {
			$('.theme-popover-mask').fadeIn(100);
			$('.theme-popover').slideDown(200);
		})
		$('.theme-poptit .close').click(function() {
			$('.theme-popover-mask').fadeOut(100);
			$('.theme-popover').slideUp(200);
		})

	})
</script>

<script type="text/javascript">
	(function() {

		var time = null;
		var list = $("#navlist");
		var box = $("#navbox");
		var lista = list.find("a");

		for (var i = 0, j = lista.length; i < j; i++) {
			if (lista[i].className == "now") {
				var olda = i;
			}
		}

		var box_show = function(hei) {
			box.stop().animate({
				height : hei,
				opacity : 1
			}, 400);
		}

		var box_hide = function() {
			box.stop().animate({
				height : 0,
				opacity : 0
			}, 400);
		}

		lista.hover(function() {
			lista.removeClass("now");
			$(this).addClass("now");
			clearTimeout(time);
			var index = list.find("a").index($(this));
			box.find(".cont").hide().eq(index).show();
			var _height = box.find(".cont").eq(index).height() + 54;
			box_show(_height)
		}, function() {
			time = setTimeout(function() {
				box.find(".cont").hide();
				box_hide();
			}, 50);
			lista.removeClass("now");
			lista.eq(olda).addClass("now");
		});

		box.find(".cont").hover(function() {
			var _index = box.find(".cont").index($(this));
			lista.removeClass("now");
			lista.eq(_index).addClass("now");
			clearTimeout(time);
			$(this).show();
			var _height = $(this).height() + 54;
			box_show(_height);
		}, function() {
			time = setTimeout(function() {
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
	<s:include value="head.jsp" />
	<div class="space"></div>
	<div class="personalTitle">
		<div class="personalTitle_center">
			<div class="mySpace"></div>
			<div class="myImg">
				<a href=""><img src="image/20_big.jpg"></a>
			</div>
			<span class="userName"> <font class="userName-font">${teacher.firstName }${teacher.lastName }</font>
				<font class="discipline">职位：</font> <font class="discipline-name">讲师</font>
			</span>
		</div>
	</div>
	<div class="personalCenter">
		<div class="personalCenter_body">
			<div class="study">

				`
				<div>
					<font>教学</font>
				</div>

			</div>
		</div>


	</div>
	<div class="learnCourse">

		<div class="leanrtitle">
			<div class="learing">他的课程</div>
			<div class="learntitleBorder"></div>
		</div>


		<div class="courseBody">
			<s:iterator value="#request.courses">
				<div class="course">
					<a href="course?course=${courseId }" alt="${courseName }" target="_blank"><img
						src="${image }" width="260" height="150" alt="${courseName }"></a>

				</div>

			</s:iterator>


		</div>
		<div class="course_buttom"></div>

	</div>
	<s:include value="copyright.jsp"></s:include>

	<div class="top-buttom">
		<div class="gotop">
			<a href="#top" title="返回顶部"><img src="image//gotop.png"></a>
		</div>
		<div class="gobuttom">
			<a href="feedback//feedback.html" title="意见反馈"><img
				src="image//fankui.png"></a></a>
		</div>
	</div>
<%-- 	<s:include value="login.jsp"></s:include>
 --%>
</body>
</html>