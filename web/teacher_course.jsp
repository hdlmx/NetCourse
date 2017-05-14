<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<div class="learnCourse">

	<div class="leanrtitle">
		<div class="learing">所授课程</div>
		<div class="learntitleBorder"></div>
	</div>


	<div class="courseBody">
		<!--
                <div class="course_space"></div>
        -->
		<!--   <div class="course_left_space"></div>-->
		

		<s:iterator value="#request.teacherCourse">
			<div class="course">
				<a href="courseDetil?course=${courseId }"> <img src="${image }"
					width="260" height="150"></a>

			</div>
		</s:iterator>
		
		<div class="course_buttom"></div>

	</div>
</div>