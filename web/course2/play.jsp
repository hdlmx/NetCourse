<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>play</title>
<link rel="stylesheet" type="text/css" href="style.css">
<script src="js/jquery-2.2.0.min.js"></script>
<script src="js/divjs.js"></script>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<link type="text/css" rel="stylesheet"
	href='http://fonts.googleapis.com/css?family=Ubuntu:300italic,300,700' />
<link type="text/css" rel="stylesheet" href="../css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="../css/flexslider.css" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="../js/custom.js"></script>
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
			<div class="cslg-logo">
				<img src="../image/cslg-logo(2).png" width="300px" height="36px"
					alt="常熟理工学院">
			</div>


			<div class="nav_menu">
				<div class="nav">
					<div class="list" id="navlist">
						<ul id="navfouce">
							<div class="cslg-institute">
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
											href="http://sc.chinaz.com">软件工程</a> <a
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
			<div class="user"></div>

		</div>

	</div>
	<div class="space"></div>
	<div class="nav_title">
		<div class="nav_title_body"></div>
	</div>
	<div class="play">
		<div class="play_body">
			<div class="viedo_play">
				<video src="../sourse/cs/c/2.第一个C语言程序：hello world.mp4"
					controls="controls" width="600px" height="300px" preload="auto"
					poster=""></video>
			</div>
			<div class="viedo_list">
				<div class="course_title">
					<span>课程列表</span>
				</div>
				<div class="course_list">
					<ul>
						<li><a href=""><font>1.1课程介绍</font></a></li>
						<li><a href=""><font>1.1课程介绍</font></a></li>
						<li><a href=""><font>1.1课程介绍</font></a></li>
						<li><a href=""><font>1.1课程介绍</font></a></li>
						<li><a href=""><font>1.1课程介绍</font></a></li>
						<li><a href=""><font>1.1课程介绍</font></a></li>
						<li><a href=""><font>1.1课程介绍</font></a></li>
						<li><a href=""><font>1.1课程介绍</font></a></li>
						<li><a href=""><font>1.1课程介绍</font></a></li>
						<li><a href=""><font>1.1课程介绍</font></a></li>
						<li><a href=""><font>1.1课程介绍</font></a></li>
						<li><a href=""><font>1.1课程介绍</font></a></li>
						<li><a href=""><font>1.1课程介绍</font></a></li>
						<li><a href=""><font>1.1课程介绍</font></a></li>
						<li><a href=""><font>1.1课程介绍</font></a></li>
						<li><a href=""><font>1.1课程介绍</font></a></li>


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
						<a href=""><img src="../image/20_big.jpg" width="60px"
							height="60px"></a>
					</div>

				</div>
				<div class="user_name">
					<p>990489713</p>
				</div>
				<div class="form_body">
					<div class="form_back">
						<div class="form_back_left"></div>
						<div class="form_back_center"></div>
						<div class="from_back_rigth"></div>
					</div>
					<div class="form_body_body">
						<form action="" method="post">
							<textarea style="width: 605px; height: 50px; float: left"></textarea>
							<input type="submit" value="提问"
								style="float: left; width: 100px; height: 35px; background-color: #005a9e; margin-top: 15px; border-radius: 3px; color: white; font-size: 20px; font-family: 微软雅黑; border: 0px">
						</form>
					</div>
				</div>

			</div>
			<div class="teacher_body">
				<img src="../image/teacher_01.jpg" alt="" width="100px"
					height="100px">
				<p>张帆</p>
				<a><div class="more">
						<font>查看他的课程</font>
					</div></a>
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
			<a href="#top" title="返回顶部"><img src="../image//gotop.png"></a>
		</div>
		<div class="gobuttom">
			<a href="feedback//feedback.html" title="意见反馈"><img
				src="../image//fankui.png"></a></a>
		</div>
	</div>
	<div class="theme-popover">
		<div class="theme-poptit">
			<a href="javascript:;" title="关闭" class="close">×</a>
			<h2 style="color: white">登&nbsp;&nbsp;录</h2>
		</div>
		<div class="theme-popbod dform">
			<form class="theme-signin" name="loginform" action="" method="post">
				<ol>

					<li><strong></strong><input placeholder="用户名/邮箱/手机"
						class="ipt" type="text" name="log" value="lanrenzhijia" size="20" /></li>
					<p>&nbsp;</p>

					<li><strong></strong><input placeholder="密码" class="ipt"
						type="password" name="pwd" value="***" size="20" /></li>
					<p></p>
					<p></p>
					<li><input class="btn btn-primary" type="submit" name="submit"
						value=" 登 录 " /></li>
				</ol>
			</form>
			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a>忘记密码？</a>
		</div>
	</div>
	<div class="theme-popover-mask"></div>

</body>
</html>