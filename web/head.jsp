<%@page import="java.util.Set"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="cn.school.NetCourse.pojo.*"%>
<%@ page import="cn.school.NetCourse.Dao.*"%>
<%@taglib prefix="s" uri="/struts-tags"%>



<a name="top"></a>
<div class="head mainThemeColor">
	<div class="head_body">
		<a href="index.jsp">
			<div class="school-logo">
				<img src="image/school-logo(2).png" width="300px" height="36px"
					alt="常熟理工学院">
			</div>
		</a>

		<div class="nav_menu">
			<div class="nav">
				<div class="list" id="navlist">
					<!-- 						<ul id="navfouce"> -->
					<div class="school-institute">
						<a href="" style="font-size: 15px;">学院分布</a>
					</div>
					</ul>
				</div>
				<%
					InstituteDao instituteDao = new InstituteDao();
					MajorDao majorDao = new MajorDao();
					List<Institute> list = instituteDao.allInstitute();
				%>
				<div class="box" id="navbox"
					style="height: 0px; opacity: 0; overflow: hidden;">
					<div class="cont" style="display: none;">
						<ul class="sublist clearfix">
							<%
								for (Institute institute : list) {
							%>
							<li>
								<h3 class="mcate-item-hd">
									<span> <%
 	out.print(institute.getInstituteName());
 %>
									</span>
								</h3>
								<p class="mcate-item-bd">
									<%
										List<Major> majors = majorDao.getMajor(institute);
											for (Major major : majors) {
									%>
									<a href="major?id=<%=major.getMajorId()%>"><%=major.getMajorName()%></a>



									<%
										}
									%>
								</p>
							</li>

							<%
								}
							%>

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

		<div class="course-search">
			<div class="search-logo">
				<div class="search-background"></div>
				<div class="search-li"></div>
			</div>
			<div class="search-form">
				<form action="search" method="post">
					<input id="input_search" type="search" name="courseName"
						width=350px height=33px placeholder="搜索你想要的课程" maxlength="25"
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
							<a href="reg.html"><font color="white">注册</font></a>
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
								<img src="image/snajiao.png" alt="" width="10px" height="8.72px">
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
								<a href="myCourse">
									<div class="person_course_left">
										<div class="person_course_left_image">
											<img src="image/book-small.png" width="25px" height="19px">
										</div>
										<div class="pserson_course_left_mycourse">
											<font>我的课程</font>
										</div>
									</div>
								</a> <a href="dynamic">
									<div class="person_course_right">
										<div class="person_course_left_image">
											<img src="image/dy2.png" width="25px" height="17px">
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
										<img src="image/setting.png" alt="" width="15px" height="15px">
									</div>
									<div class="setting_option">
										<a href="setting">账号管理</a>
									</div>
									<div class="exit">
										<a href="exit">退出</a>
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

<div class="theme-popover">
	<div class="theme-poptit">
		<a href="javascript:;" title="关闭" class="close">×</a>
		<h2 style="color: white">登&nbsp;&nbsp;录</h2>
	</div>
	<div class="theme-popbod dform">
		<form class="theme-signin" name="loginform" action="login"
			method="post">
			<ol>

				<li><strong></strong><input placeholder="用户名/邮箱/手机" class="ipt"
					type="text" name="username" size="20" /></li>
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