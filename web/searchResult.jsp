<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>主页</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script src="js/jquery-2.2.0.min.js"></script>
<script src="js/divjs.js"></script>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<link type="text/css" rel="stylesheet"
	href='http://fonts.googleapis.com/css?family=Ubuntu:300italic,300,700' />
<link type="text/css" rel="stylesheet" href="css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="css/flexslider.css" />
<link type="text/css" rel="stylesheet" href="css/search-style.css">
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
	<div class="courselist">
		<div class="courseList_body">
			<div class="searchTitle">
				<div class="result_title">
					找到与"<font color="red">${Key }</font>"相关的课程：
				</div>
			</div>
			<div class="course_body">
				<s:iterator value="#request.courseReslut">
					<div class="course">
						<a href="course?course=${courseId }">
							<div class="courseImage">
								<img src="${image }" alt="" width="260px" height="150px">
							</div>
							<div class="a_space"></div>
							<div class="courseName">${courseName }</div>
							<div class="a_space"></div>
						</a>

					</div>
				</s:iterator>


			</div>
			<div class="courseSpace"></div>

		</div>

		<div class="page">
			<div class="pageBody">
				<div class="pageIndex">
					<ul>
						<li id="selectedPage"><a href="">
								<div class="pageNum">1</div>
						</a></li>
						<li><a href="">
								<div class="pageNum">2</div>
						</a></li>
						<li><a href="">
								<div class="pageNum">3</div>
						</a></li>
						<li><a href="">
								<div class="pageNum">4</div>
						</a></li>
					</ul>
					<div class="pageTotal">共3页，</div>
					<form>
						<div class="pageForm">
							第<input type="text" width="30px" height="30px">页
						</div>
						<div>
							<input id="tiaozhuan_submit" type="submit" value="跳转">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<s:include value="copyright.jsp"></s:include>
</body>
</html>

</body>
</html>