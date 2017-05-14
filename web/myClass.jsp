<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>我的学习</title>
<link rel="stylesheet" type="text/css" href="css/mycourse-style.css">
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

	<s:include value="head.jsp"></s:include>
	<div class="space"></div>
	<div class="personalTitle">
		<div class="personalTitle_center">
			<div class="mySpace"></div>
			<div class="myImg">
				<a href=""><img src="image/20_big.jpg"></a>
			</div>
			<span class="userName"> <font class="userName-font">${sessionScope.student.firstName}${sessionScope.student.lastName}</font>
				<br> <font class="discipline">专业：</font> <font
				class="discipline-name">${sessionScope.student.major.majorName}</font>
			</span>
		</div>
	</div>
	<div class="personalCenter">
		<s:set name="myIndex" value="#request.myIndex">
		</s:set>
		<div class="personalCenter_body">
			<s:if test="#myIndex==0">
				<a href="" class="a_study">
					<div class="study">


						<div>
							<font>学习</font>
						</div>

					</div>
				</a>
				<a href="dynamic" class="a_dy">
					<div class="dymin_static">


						<div>
							<font>动态</font>
						</div>

					</div>
				</a>
			</s:if>
			<s:elseif test="#myIndex==2">
				<a href="myCourse" class="a_study">
					<div class="study_static">


						<div>
							<font>学习</font>
						</div>

					</div>

				</a>

				<a href="" class="a_dy">
					<div class="dymin">


						<div>
							<font>动态</font>
						</div>

					</div>
				</a>
			</s:elseif>


			<s:elseif test="#myIndex==3">
				<a href="myCourse" class="a_study">
					<div class="study_static">


						<div>
							<font>学习</font>
						</div>

					</div>

				</a>
				<a href="dynamic" class="a_dy">
					<div class="dymin_static">


						<div>
							<font>动态</font>
						</div>

					</div>
				</a>
			</s:elseif>
		</div>


	</div>
	<s:if test="#myIndex==0">
		<!-- <h1>输出学生的课程</h1> -->
		<s:include value="student_course.jsp"></s:include>
	</s:if>
	<s:elseif test="#myIndex==3">
		<!-- <h1>输出学生的设置</h1> -->
		<s:include value="student_setting.jsp"></s:include>
	</s:elseif>




	<s:include value="copyright.jsp"></s:include>
</body>
</html>