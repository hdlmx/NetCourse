<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="cn.school.NetCourse.pojo.*"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>${major.majorName }-课程体系</title>
<link rel="stylesheet" type="text/css" href="css/major-style.css">
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
	<s:include value="head.jsp"></s:include>

	<div class="space"></div>
	<div class="gradebackTitle">
		<div class="major_name">
			<div class="major_name_space"></div>
			<div class="major_name_body">
				<div class="name_body">
					<font>${major.majorName }</font>
				</div>
				<div class="name_body">
					<font></font>
				</div>
				<div class="name_body">
					<font>课程体系</font>
				</div>

			</div>
			<div class="major_name_space"></div>
		</div>
		<div class="majorbody">
			<div class="majorCenter">
				<div class="major_title">
					<div class="gradeNum grade1">
						<div class="gradeNum_body">
							<div class="grade_img">
								<div class="grade_img_space"></div>
								<div class="grade_img_body">
									<img src="image/grade1.png">
								</div>
							</div>

							<div class="grade_space"></div>
							<font>大一课程</font>
						</div>
					</div>
					<div class="gradeNum grade2">
						<div class="gradeNum_body">
							<div class="grade_img">
								<div class="grade_img_space"></div>
								<div class="grade_img_body">
									<img src="image/grade2.png">
								</div>
							</div>
							<div class="grade_space"></div>
							<font>大二课程</font>
						</div>
					</div>
					<div class="gradeNum grade3">
						<div class="gradeNum_body">
							<div class="grade_img">
								<div class="grade_img_space"></div>
								<div class="grade_img_body">
									<img src="image/grade3.png">
								</div>
							</div>
							<div class="grade_space"></div>
							<font>大三课程</font>
						</div>
					</div>
					<div class="gradeNum grade4">
						<div class="gradeNum_body">
							<div class="grade_img">
								<div class="grade_img_space"></div>
								<div class="grade_img_body">
									<img src="image/grade4.png">
								</div>
							</div>
							<div class="grade_space"></div>
							<font> 大四课程</font>
						</div>
					</div>

				</div>
				<div class="grade_body grade_border">
					<div class="course_body">
						<ul>

							<s:iterator value="#request.grade1">
								<li class="course_list" target="_blank"><a
									href="course?course=${courseId }&major=${major.majorId}"
									target="_blank">${courseName }</a></li>
							</s:iterator>




						</ul>
					</div>
				</div>
				<div class="grade_body grade_border">
					<div class="course_body">
						<ul>
							<s:iterator value="#request.grade2">
								<li class="course_list"><a
									href="course?course=${courseId }&major=${major.majorId}"
									target="_blank">${courseName }</a></li>
							</s:iterator>


						</ul>
					</div>
				</div>
				<div class="grade_body grade_border">
					<div class="course_body ">
						<ul>
							<s:iterator value="#request.grade3">
								<li class="course_list"><a
									href="course?course=${courseId }&major=${major.majorId}"
									target="_blank">${courseName }</a></li>
							</s:iterator>


						</ul>
					</div>
				</div>
				<div class="grade_body">
					<div class="course_body">
						<ul>
							<s:iterator value="#request.grade4">
								<li class="course_list"><a
									href="course?course=${courseId }&major=${major.majorId}"
									target="_blank">${courseName }</a></li>
							</s:iterator>


						</ul>
					</div>
				</div>
			</div>


		</div>

		<s:include value="copyright.jsp"></s:include>

		<%-- 		<s:include value="login.jsp"></s:include>
 --%>



	</div>
</body>
</html>