<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="userInfos" scope="session" type="java.util.List"/>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <base href="<%=basePath%>" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" type="image/x-icon" href="images/favicon.ico">
    <jsp:include page="/util.jsp"/>
</head>
<body>
全部用户信息：
<s:iterator value="#session.userInfos" var="user">
    <div>  姓名：<s:property value="#user.name"/>   年龄：<s:property value="#user.age"/>    电话： <s:property value="#user.telephone"/>  <a target="_blank" href="user/userinfo!detail.action?id=<s:property value="#user.id"/>">json详情</a></div>
</s:iterator>

</body>
</html>
