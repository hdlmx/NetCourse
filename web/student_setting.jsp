<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
     

<div class="student_setting">

    <div class="setting_title">
        <div class="setting_space"></div>
        <div class="student_info">个人信息</div>
        <div class="setting_leBorder">
            <div class="setting_Border_body">

            </div>

        </div>
    </div>


    <div class="settingBody">
        <form action="modify" method="post">
            <div class="settingLable">
                <ul>
                    <li>姓</li>
                    <li>名</li>
                    <li>邮箱</li>
                    <li>原始密码</li>
                    <li>新密码</li>
                    <li>确认新密码</li>
                </ul>
            </div>
            <div class="settingForm">
                <ul>
                    <li>
                        <input type="text" name="firstName" id="" value="<s:property value="#session.student.firstName"/>">
                    </li>
                    <li>
                        <input type="text" name="lastName" id="" value="<s:property value="#session.student.lastName"/>">
                    </li>
                    <li>
                        <input type="text" name="email" id="" value="<s:property value="#session.student.email"/>">
                    </li>
                    <li>
                        <input type="password" name="orginPassword" id="">
                    </li>
                    <li>
                        <input type="password" name="newPassword" id="">
                    </li>
                    <li>
                        <input type="password" name="confimPassword" id="">
                    </li>
                </ul>

            </div>
            <div class="settingSubmit">
                <input type="submit" value="保存"></input>
            </div>
        </form>
    </div>
    <div class="course_buttom"></div>

</div>