<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>我的学习</title>
<link rel="stylesheet" type="text/css"
	href="css/teacherCenter-style.css">
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



</head>
<body>


	<div class="personalTitle">
		<div class="personalTitle_center">
			<div class="mySpace"></div>
			<div class="myImg">
				<a href=""><img src="image/20_big.jpg"></a>
			</div>
			<div class="userName">
				<div class="userName-font">${sessionScope.teacher.firstName }${sessionScope.teacher.lastName }</div>
				<br>

				<div class="discipline">学院：</div>
				<div class="discipline-name">${sessionScope.teacher.institute.instituteName }</div>
			</div>
		</div>
	</div>
	<div class="personalCenter">
		<div class="personalCenter_body">
			<div class="study">


				<div>
					<font>学习</font>
				</div>

			</div>
		</div>


	</div>

	<s:include value="teacher_course.jsp"></s:include>
	<%-- ${test } --%>



	<s:include value="copyright.jsp"></s:include>


</body>
</html>