<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>${thisCourse.courseName }</title>
<link rel="stylesheet" type="text/css"
	href="css/teacherCourseDetail-style.css">
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
<script type="text/javascript" src="..js/custom.js"></script>
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

	<div class=" course_introduce_title">
		<div class="course_introduce_title_body">
			<div class="course_introdece_body">

				<div class="course_name">
					<font>${thisCourse.teacher.institute.instituteName }</font>
				</div>

				<div class="course_article">
					<div class="article">
						<a
							href="play?major=${major.majorId }&course=${course.courseId}&video=1"
							target="_blank"><span
							style="font-size: 20px; font-weight: 800; color: #005a9e">${thisCourse.courseName }</span>
						</a> <a href="modifyCourse?course=${thisCourse.courseId}"
							target="_blank"><div class="add">
								<p>修改</p>
							</div></a> <font>${thisCourse.courseTitle }</font>

					</div>
				</div>


			</div>
			<div class="course_img">
				<div class="course_img_body">
					<img src="${thisCourse.image}" alt="" width="260px" height="150px">
				</div>
			</div>

		</div>



		<%-- 	<s:include value="login.jsp"></s:include>
 --%>
	</div>
	<div class="course_body">
		<div class="course_body_body">
			<div class="course_body_title">
				<div class="couse_title_body">
					<font>课程介绍</font>
				</div>
				<div class="couse_introduce_body_body">
					<font>${thisCourse.courseIntroduce }</font>
					
				</div>
			</div>
			<div class="course_teacher">
				<div class="teacher_title">
					<font>授课老师</font>
				</div>
				<div class="teacher_img">
					<img src="image/teacher_01.jpg" width="80" height="80">
				</div>
				<div class="teacher_name">
					<div>${course.teacher.firstName }${course.teacher.lastName }</div>
					
					<div>讲师</div>
				</div>
			</div>

		</div>
	</div>
	
	<s:include value="copyright.jsp"></s:include>
</body>
</html>