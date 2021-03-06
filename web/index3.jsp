<%@page import="java.util.Set"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="cn.school.NetCourse.pojo.*"%>
<%@ page import="cn.school.NetCourse.Dao.*"%>
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
	<!--
页面的div结构为：

-->
	<a name="top"></a>
	<div class="head mainThemeColor">
		<div class="head_body">
			<div class="school-logo">
				<img src="image/school-logo(2).png" width="300px" height="36px"
					alt="常熟理工学院">
			</div>


			<div class="nav_menu">
				<div class="nav">
					<div class="list" id="navlist">
						<ul id="navfouce">
							<div class="school-institute">
								<a href="" style="font-size: 15px;">学院分布</a>
							</div>
						</ul>
					</div>
					<div class="box" id="navbox"
						style="height: 0px; opacity: 0; overflow: hidden;">
						<div class="cont" style="display: none;">
							<ul class="sublist clearfix">
								<li>
									<h3 class="mcate-item-hd">
										<span>计算机科学与工程学院</span>
									</h3>
									<p class="mcate-item-bd">
										<a href="http://sc.chinaz.com">计算机科学与技术</a> <a
											href="major/major.html">软件工程</a> <a
											href="http://sc.chinaz.com">网络工程</a> <a
											href="http://sc.chinaz.com">物联网工程</a>
								</li>
								<li>
									<h3 class="mcate-item-hd">
										<span>人文学院</span>
									</h3>
									<p class="mcate-item-bd">
										<a href="http://sc.chinaz.com">汉语言文学</a> <a
											href="http://sc.chinaz.com">秘书学</a> <a
											href="http://sc.chinaz.com">历史学</a>
								</li>
								<li>
									<h3 class="mcate-item-hd">
										<span>外国语学院</span>
									</h3>
									<p class="mcate-item-bd">
										<a href="http://sc.chinaz.com">英语</a> <a
											href="http://sc.chinaz.com">日语</a> <a
											href="http://sc.chinaz.com">朝鲜语</a> <a
											href="http://sc.chinaz.com">德语</a>
								</li>
								<li>
									<h3 class="mcate-item-hd">
										<span>艺术与服装工程学院</span>
									</h3>
									<p class="mcate-item-bd">
										<a href="http://sc.chinaz.com">服装设计</a> <a
											href="http://sc.chinaz.com">环境设计</a> <a
											href="http://sc.chinaz.com">数码艺术</a> <a
											href="http://sc.chinaz.com">美术学</a>
								</li>

								<li>
									<h3 class="mcate-item-hd">
										<span>电气与自动化工程学院</span>
									</h3>
									<p class="mcate-item-bd">
										<a href="http://sc.chinaz.com">自动化</a> <a
											href="http://sc.chinaz.com">电气工程</a>
								</li>

								<li>
									<h3 class="mcate-item-hd">
										<span>数学与统计学院</span>
									</h3>
									<p class="mcate-item-bd">
										<a href="http://sc.chinaz.com">应用数学</a> <a
											href="http://sc.chinaz.com">经济统计学</a> <a
											href="http://sc.chinaz.com">信息与计算科学</a>
								</li>
								<li>
									<h3 class="mcate-item-hd">
										<span>化学与材料工程学院</span>
									</h3>
									<p class="mcate-item-bd">
										<a href="http://sc.chinaz.com">应用化学</a> <a
											href="http://sc.chinaz.com">高分子材料</a> <a
											href="http://sc.chinaz.com">金属材料工程</a> <a
											href="http://sc.chinaz.com">无机功能材料</a>
								</li>
								<li>
									<h3 class="mcate-item-hd">
										<span>机械工程学院</span>
									</h3>
									<p class="mcate-item-bd">
										<a href="http://sc.chinaz.com">机械工程</a> <a
											href="http://sc.chinaz.com">汽车服务工程</a> <a
											href="http://sc.chinaz.com">机械电子工程</a> <a
											href="http://sc.chinaz.com">材料成型与控制工程</a>
								</li>
								<li>
									<h3 class="mcate-item-hd">
										<span>物理与电子工程学院</span>
									</h3>
									<p class="mcate-item-bd">
										<a href="http://sc.chinaz.com">物理学</a> <a
											href="http://sc.chinaz.com">电子科学与技术</a> <a
											href="http://sc.chinaz.com">光电信息科学与工程</a> <a
											href="http://sc.chinaz.com">电子信息工程</a> <a
											href="http://sc.chinaz.com">新能源科学与工程</a>
								</li>
								<li>
									<h3 class="mcate-item-hd">
										<span>经济与管理学院</span>
									</h3>
									<p class="mcate-item-bd">
										<a href="http://sc.chinaz.com">公共事业管理</a> <a
											href="http://sc.chinaz.com">文化产业管理</a> <a
											href="http://sc.chinaz.com">市场营销</a> <a
											href="http://sc.chinaz.com">财务管理</a> <a
											href="http://sc.chinaz.com">工程管理</a> <a
											href="http://sc.chinaz.com">经济与金融</a> <a
											href="http://sc.chinaz.com">旅游管理</a> <a
											href="http://sc.chinaz.com">酒店管理</a>
									</p>
								</li>


							</ul>
						</div>
						<div class="cont" style="display: none;"></div>
						<div class="cont" style="display: none;"><</div>

					</div>
				</div>
			</div>
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

					lista.hover(
							function() {
								lista.removeClass("now");
								$(this).addClass("now");
								clearTimeout(time);
								var index = list.find("a").index($(this));
								box.find(".cont").hide().eq(index).show();
								var _height = box.find(".cont").eq(index)
										.height() + 54;
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

			<div class="course-search">
				<div class="search-logo">
					<div class="search-background"></div>
					<div class="search-li"></div>
				</div>
				<div class="search-form">
					<form action="test.html" method="post">
						<input id="input_search" type="search" name="search" width=350px
							height=33px placeholder="搜索你想要的课程" maxlength="25"
							required="required" />
					</form>
				</div>
			</div>
			<s:set name="student" value="#session.student" />
			<%-- 	<s:property value="#session.student"/>
			<s:property value="student"/> --%>
			<s:if test="#student==null">
				<div class="register-login">
					<ul>

						<li class="li_loggin">
							<div>
								<a class="theme-login" href="javascript:;"><font
									color="white">登录</font></a>
							</div>
						</li>
						<li class="li_space" id="li_space">|</li>
						<li class="li_reg">
							<div>
								<a href=""><font color="white">注册</font></a>
							</div>
						</li>

					</ul>

				</div>
			</s:if>
			<s:else>
				<div class="user">
					<div class="user_image_body">
						<a href=""><img src="image/20_big.jpg" width="50px"
							height="50px"></a>

					</div>


					<div id="top-bar" class="top-bar">
						<div class="bar">
							<button id="navbox-trigger" class="navbox-trigger">
								<font>${student.firstName }&nbsp;&nbsp;${student.lastName }</font>
								<div class="sanjiao">
									<img src="image/snajiao.png" alt="" width="10px"
										height="8.72px">
								</div>
							</button>

						</div>

						<div class="navbox">
							<div class="navbox-tiles">
								<div class="person_username_title">
									<div class="person_imgage">
										<a href=""><img src="image/20_big.jpg" alt="" width="60px"
											height="60px"></a>

									</div>
									<div class="person_user_body">
										<a href="">${student.firstName }&nbsp;&nbsp;${student.lastName }</a>
									</div>
									<div class="person_major">${student.major.majorName }</div>


								</div>
								<div class="person_course">
									<a href="">
										<div class="person_course_left">
											<div class="person_course_left_image">
												<img src="image/book-small.png">
											</div>
											<div class="pserson_course_left_mycourse">
												<font>我的课程</font>
											</div>
										</div>
									</a> <a href="">
										<div class="person_course_right">
											<div class="person_course_left_image">
												<img src="image/book-small.png">
											</div>
											<div class="pserson_course_left_mycourse">
												<font>我的动态</font>
											</div>

										</div>
									</a>

								</div>
								<div class="person_option">
									<div class="person_option_setting">
										<div class="setting_logo">
											<img src="image/setting.png" alt="" width="15px"
												height="15px">
										</div>
										<div class="setting_option">
											<a href="">账号管理</a>
										</div>
										<div class="exit">
											<a href="">退出</a>
										</div>
									</div>
								</div>
							</div>
						</div>


					</div>


					<script>
						(function() {
							$(document)
									.ready(
											function() {
												$('#navbox-trigger')
														.click(
																function() {
																	return $(
																			'#top-bar')
																			.toggleClass(
																					'navbox-open');
																});
												return $(document)
														.on(
																'click',
																function(e) {
																	var $target;
																	$target = $(e.target);
																	if (!$target
																			.closest('.navbox').length
																			&& !$target
																					.closest('#navbox-trigger').length) {
																		return $(
																				'#top-bar')
																				.removeClass(
																						'navbox-open');
																	}
																});
											});
						}.call(this));
					</script>
				</div>
			</s:else>


		</div>

	</div>
	<%-- <s:include value="head.jsp"></s:include> --%>
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
	<div class="copyright">
		<div class="leftspace"></div>
		<div class="center">
			<div class="copyright-space"></div>
			版权所有 ©2016 常熟理工学院<br> 苏ICP备05026756号 Version 1.0.0
			release201602.14
		</div>
		<div class="rightspace"></div>

	</div>

	<div class="top-buttom">
		<div class="gotop">
			<a href="#top" title="返回顶部"><img src="image//gotop.png"></a>
		</div>
		<div class="gobuttom">
			<a href="feedback//feedback.html" title="意见反馈"><img
				src="image//fankui.png"></a></a>
		</div>
	</div>
	<div class="theme-popover">
		<div class="theme-poptit">
			<a href="javascript:;" title="关闭" class="close">×</a>
			<h2 style="color: white">登&nbsp;&nbsp;录</h2>
		</div>
		<div class="theme-popbod dform">
			<form class="theme-signin" name="loginform" action="login"
				method="post">
				<ol>

					<li><strong></strong><input placeholder="用户名/邮箱/手机"
						class="ipt" type="text" name="username" size="20" /></li>
					<p>&nbsp;</p>

					<li><strong></strong><input placeholder="密码" class="ipt"
						type="password" name="password" size="20" /></li>
					<p></p>
					<p></p>
					<li><input class="btn btn-primary" type="submit" value=" 登 录 " /></li>
				</ol>
			</form>
			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a>忘记密码？</a>
		</div>
	</div>
	<div class="theme-popover-mask"></div>
</body>
</html>