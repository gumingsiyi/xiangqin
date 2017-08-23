<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: stiles
  Date: 2017/8/9
  Time: 下午4:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>详细信息</title>
</head>
<body>
<div class="ui container">
    名字：<s:property value="#request.user.name"/>  <br>
    性别：<s:property value="#request.user.sex"/>  <br>
    年龄：<s:property value="#request.user.age"/>  <br>
    生日：<s:property value="#request.user.birth"/>  <br>
    学历：<s:property value="#request.user.edu"/>  <br>
    收入：<s:property value="#request.user.income"/>  <br>
    工作：<s:property value="#request.user.job"/>  <br>
    工作地点：<s:property value="#request.user.workplace"/>  <br>
    性格：<s:property value="#request.user.cha"/>  <br>
    自我介绍：<s:property value="#request.user.intro"/>  <br>
    需求：<s:property value="#request.user.requirement"/>  <br>
    <img src="${pageContext.request.contextPath}/photo/<s:property value="#request.user.id"/>/1.jpg" alt="">
    <img src="${pageContext.request.contextPath}/photo/<s:property value="#request.user.id"/>/2.jpg" alt="">
    <img src="${pageContext.request.contextPath}/photo/<s:property value="#request.user.id"/>/3.jpg" alt="">
    <img src="${pageContext.request.contextPath}/photo/<s:property value="#request.user.id"/>/4.jpg" alt="">
    <img src="${pageContext.request.contextPath}/photo/<s:property value="#request.user.id"/>/5.jpg" alt="">
    <img src="${pageContext.request.contextPath}/photo/<s:property value="#request.user.id"/>/6.jpg" alt="">

</div>

</body>
</html>
