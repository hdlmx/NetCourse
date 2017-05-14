<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="cn.school.NetCourse.pojo.*"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>${toPlay.videoName }-${course.courseName }</title>
<link rel="stylesheet" type="text/css" href="css/play-style.css">
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
	<div class="nav_title">
		<div class="nav_title_body">
			<div class="navor">
				<a href="index.jsp">首页</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<a
					href="major?id=${major.majorId }">${major.majorName }</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<a
					href="">${course.courseName }</a>
			</div>
			<div class="video-title">
				<font>${toPlay.videoName }</font>
			</div>
		</div>
	</div>
	<div class="play">
		<div class="play_body">
			<div class="viedo_play">
				<div class="video_play">
					<video src="${toPlay.path }" controls="controls" width="100%"
						height="100%" preload="auto" poster="" autoplay="autoplay"></video>
				</div>

			</div>
			<div class="viedo_list">
				<div class="course_title">
					<span>课程列表</span>
				</div>
				<div class="course_list">
					<ul>
						<s:set name="playingVideo" value="#request.toPlay" />

						<s:iterator value="#request.videos">
							<s:set name="listVideo" value="videoId" />
							<s:if test="#playingVideo.videoId==#listVideo ">
								<li><a class="playingvideo"
									href="play?major=${major.majorId }&course=${course.courseId }&video=${videoId}"><font>${videoName }</font></a>
								</li>

							</s:if>
							<s:else>
								<li><a class="videolistA"
									href="play?major=${major.majorId }&course=${course.courseId }&video=${videoId}"><font>${videoName }</font></a>

								</li>

							</s:else>



						</s:iterator>




					</ul>

				</div>
			</div>
		</div>
	</div>
	<div class="queery">
		<div class="queery_title">
			<div class="quest">
				<p class="p_query">学习提问</p>
				<div class="border_space"></div>
			</div>
			<div class="teacher">
				<div class="teacher_name">
					<p>授课老师</p>
					<!--<div class="border_space_teacher">-->

					<!--</div>-->
				</div>

			</div>
		</div>
		<div class="query_form">
			<div class="query_form_body">
				<div class="user_img">
					<div class="user_img_body">
						<a href=""><img src="image/20_big.jpg" width="60px"
							height="60px"></a>
					</div>

				</div>
				<div class="user_name">
					<p>
						<s:property value="#session.student.firstName" />
						<s:property value="#session.student.lastName" />
					</p>
				</div>
				<div class="form_body">
					<div class="form_back">
						<div class="form_back_left"></div>
						<div class="form_back_center"></div>
						<div class="from_back_rigth"></div>
					</div>
					<div class="form_body_body">
						<form action="addQuestion" method="post">
							<textarea name="context"
								style="width: 605px; height: 50px; float: left"></textarea>
							<input type="submit" value="提问"
								style="float: left; width: 70px; height: 35px; background-color: #005a9e; margin-top: 15px; border-radius: 3px; color: white; font-size: 15px; font-family: 微软雅黑; border: 0px">
							<input type="text" name="videoId" value="${toPlay.videoId }"
								style="display: none"> <input type="text"
								name="teacherId" value="${course.teacher.username }"
								style="display: none">
						</form>
					</div>
				</div>

			</div>
			<div class="teacher_body">
				<img src="image/teacher_01.jpg" alt="" width="100px" height="100px">
				<p>${course.teacher.firstName }${course.teacher.lastName }</p>
				<a href="teacher?id=${course.teacher.username }" target="_blank"><div
						class="more">
						<font>查看他的课程</font>
					</div></a>
			</div>

		</div>
		<div class="questionList">
			<div class="questionListBody">
				<s:iterator value="#request.questions">
					<div class="question">
						<div class="questionUserImg">
							<img src="image/20_big.jpg" width="60px" height="60px">
						</div>
						<div class="questionTitle">
							<span class="questionUserName">${student.username }</span>
							<div class="questionDate">${date }</div>
							<a href="">回复</a>
						</div>
						<div class="questionBody">${context }</div>

					</div>
				</s:iterator>




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
		</div>
		<s:include value="copyright.jsp"></s:include>
	</div>

</body>
</html>