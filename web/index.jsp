<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>网络课堂</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<!-- <link rel="stylesheet" type="text/css" href="head.css">
 -->
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
	<div class="body">
		<div class="mainpage_body">
			<div class="mainpage">
				<div class="container">
					<section class="topspace blackshadow bg-white">

						<!-- slider-->
						<div class="flexslider">
							<ul class="slides">
								<li><img src="slider/mainpage1.jpg" alt="" />
									<div
										style="position: absolute; top: 70px; left: 45px;; width: 70%; height: 400px;">
										<div class="slide_content_left">
											<h2>Cya, Mary!</h2>
										</div>
										<div class="slide_desc_left">
											Hamburg, Germany( Photo <a href="http://sc.chinaz.com/">By
												Zanthia </a> )
										</div>
									</div></li>
								<li><img src="slider/mainpage2.jpg" alt="" />
									<div class="slide_content_right">
										<h2>如何在线学习？</h2>
									</div>
									<div class="slide_desc_right">
										Hamburg,Germany( Photo <a href="http://sc.chinaz.com/">By
											Zanthia </a> )
									</div></li>
								<li><img src="slider/mainpage3.png" alt="" />
									<div class="slide_content_left">
										<h2>Osaka Airport</h2>
									</div>
									<div class="slide_desc_left">Osaka, Japan</div></li>
								<li><img src="slider/mainpage4.jpg" alt="" />
									<div class="slide_content_right">
										<h2>Piha, New Zealand</h2>
									</div>
									<div class="slide_desc_right">
										Piha, New Zealand ( Photo <a href="http://sc.chinaz.com/">By
											Zanthia </a> )
									</div></li>
							</ul>
						</div>
						<div style="text-align: center; clear: both"></div>
					</section>

				</div>
			</div>
			<div class="software"></div>
			<div class="gotosoftware">
				<a href="http://www.baidu.com">

					<div class="buttom-gosoftware">
						<font style="float: left">开始学习</font> <img
							src="image/qyztb_arrow.png" />
					</div>
				</a>


			</div>
		</div>

	</div>
	<div class="hot-course">
		<div class="hot_course_body_center">
			<div class="hot-course-title">
				<div class="title-top"></div>
				<div class="title-center">
					<span class="hot-center-name"><a href="">热门课程</a></span> <span
						class="more-hot-course"><a href="">查看更多热门课程 ></a></span>
				</div>
				<div class="title-bottom"></div>

			</div>
			<div class="hot-course-body">
				<div class="hotcourse">
					<div class="courselogo">
						<img src="image//javaweb.png" width="87" height="87"
							alt="java web" />
					</div>
					<div class="detail-course color66 font10">
						<p class="font16 course-title color00">Java web开发</p>
						<p>23课程</p>
						<p>161天学习时长</p>
						<p class="color99">1367人正在学习</p>
					</div>
					<a title="Java web开发" href="http://www.baidu.com"></a>
				</div>
				<div class="hotcourse">
					<div class="courselogo">
						<img src="image//Web_large.png" width="87" height="87" />
					</div>
					<div class="detail-course color66 font10">
						<p class="font16 course-title color00">Web前端开发</p>
						<p>23课程</p>
						<p>1610天学习时长</p>
						<p class="color99">1367人正在学习</p>
					</div>
					<a title="Web前端开发" href="http://www.baidu.com"></a>

				</div>
				<div class="hotcourse">
					<div class="courselogo">
						<img src="image//_large.png" width="87" height="87" />
					</div>
					<div class="detail-course color66 font10">
						<p class="font16 course-title color00">产品经理</p>
						<p>25课程</p>
						<p>189天学习时长</p>
						<p class="color99">8272人正在学习</p>
					</div>
					<a href="http://www.baidu.com" title="产品经理"></a>
				</div>
				<div class="hotcourse">
					<div class="courselogo">
						<img src="image//iOS.png" width="87" height="87" />
					</div>
					<div class="detail-course color66 font10">
						<p class="font16 course-title color00">IOS开发</p>
						<p>24课程</p>
						<p>238天学习时长</p>
						<p class="color99">14398人正在学习</p>
					</div>
					<a title="IOS开发" href="http://www.baidu.com"></a>
				</div>
				<div class="hotcourse">
					<div class="courselogo">
						<img src="image//PHP-Web_large.png" width="87" height="87" />
					</div>
					<div class="detail-course color66 font10">
						<p class="font16 course-title color00">PHP开发</p>
						<p>32课程</p>
						<p>224天学习时长</p>
						<p class="color99">9322人正在学习</p>
					</div>
					<a title="PHP开发" href="http://www.baidu.com"></a>
				</div>
				<div class="hotcourse">
					<div class="courselogo">
						<img src="image//Android_large.png" width="87" height="87" />
					</div>
					<div class="detail-course color66 font10">
						<p class="font16 course-title color00">Android架构设计</p>
						<p>22课程</p>
						<p>154天学习时长</p>
						<p class="color99">4774人正在学习</p>
					</div>
					<a title="Android架构设计" href="http://www.baidu.com"></a>
				</div>
				<div class="hotcourse">
					<div class="courselogo">
						<img src="image//Python-Web_large.png" width="87" height="87" />
					</div>
					<div class="detail-course color66 font10">
						<p class="font16 course-title color00">Pyhon开发</p>
						<p>40课程</p>
						<p>280天学习时长</p>
						<p class="color99">13855人正在学习</p>
					</div>
					<a title="Pyhon开发" href="http://www.baidu.com"></a>
				</div>
				<div class="hotcourse">
					<div class="courselogo">
						<img src="image/Unity3D.jpg" width="87" height="87" />
					</div>

					<div class="detail-course color66 font10">
						<p class="font16 course-title color00">Unity3D游戏开发</p>
						<p>23课程</p>
						<p>161天学习时长</p>
						<p class="color99">13855人正在学习</p>
					</div>
					<a title="Unity3D游戏开发" href="http://www.baidu.com"></a>
				</div>


			</div>
		</div>


	</div>
	<div class="hotlable">
		<div class="hotlable_body">
			<div class="kongdiv"></div>
			<div class="lablebody">
				<div class="divname">
					<span class="hot-center-name"><a href="">热门标签</a></span>
				</div>
				<div class="lable">

					<span class="lable-name"><a href="">Scrapy</a></span> <span
						class="lable-name"><a href="">ios</a></span> <span
						class="lable-name"><a href="">Hibernate</a></span> <span
						class="lable-name"><a href="">Mysql</a></span> <span
						class="lable-name"><a href="">Nginx</a></span> <span
						class="lable-name"><a href="">Linux</a></span>


				</div>
			</div>
		</div>


	</div>
	<div class="fridentlyLink">
		<div class="link"></div>
		<div class="nav"></div>
	</div>
	<div class="hotteacher">
		<div class="hotteacher_body">
			<div class="hotteacher_left_space"></div>
			<div class="hotteachter_center">
				<div class="hotteacher_title">
					<span>名师推荐</span>
				</div>
				<div class="hotteacher_center_body">
					<div class="teacher_logo">
						<img src="image/teacher_01.jpg">
					</div>
					<div class="teacher_name"></div>

					<div class="hotteacher_introduce"></div>

				</div>
				<div class="hotteacher_center_body">

					<div class="teacher_logo">
						<img src="image/teacher_02.jpg">
					</div>
					<div class="teacher_name"></div>
					<div class="hotteacher_introduce"></div>


				</div>
				<div class="hotteacher_center_body">
					<div class="teacher_logo">
						<img src="image/teacher_03.jpg">
					</div>
					<div class="teacher_name"></div>
					<div class="hotteacher_introduce"></div>

				</div>
				<div class="hotteacher_center_body">
					<div class="teacher_logo">
						<img src="image/teacher_04.jpg">
					</div>
					<div class="teacher_name"></div>
					<div class="hotteacher_introduce"></div>

				</div>
				<div class="hotteacher_center_body">
					<div class="teacher_logo">
						<img src="image/teacher_05.jpg">
					</div>
					<div class="teacher_name"></div>
					<div class="hotteacher_introduce"></div>


				</div>


			</div>
		</div>


	</div>
	<s:include value="copyright.jsp"></s:include>


	<%-- 	<s:include value="login.jsp"></s:include>
 --%>
</body>
</html>
