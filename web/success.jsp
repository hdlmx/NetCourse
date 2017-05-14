<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="cn.school.NetCourse.pojo.*"%>
	<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>登录成功！</p>
	${sessionScope.student.username }
	${sessionScope.student.password }
	<h1>Struts标签</h1>
	<s:property value="#session.student"/>
	<s:if test="#session.student==ZB1014118">
	fasdf
	</s:if>
	<s:else>
	失败
	</s:else>
	
	<s:set name="student" value="#session.student">>
	</s:set>
	
	<s:property value="student"/>
	<s:if test="#student!=null">
	韩
	</s:if>
	<s:property value="#student.lastName"/>
	
</body>
</html>