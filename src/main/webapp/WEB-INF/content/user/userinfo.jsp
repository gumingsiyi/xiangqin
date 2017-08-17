<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href="<%=basePath%>"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <jsp:include page="/util.jsp"/>
</head>
<body>
<div class="ui three column grid">
    <s:iterator value="#session.userInfos" var="user">
        <div class="column">
            <div class="ui segment">
                <div class="ui fluid card">
                    <div class="ui slide masked reveal image">
                        <img src="${pageContext.request.contextPath}/images/elliot.jpg" class="visible content">
                        <img src="${pageContext.request.contextPath}/images/kristy.png" class="hidden content">
                    </div>
                    <div class="content">
                        <a class="header"><s:property value="#user.name"/></a>
                        <div class="meta">
                            <span class="date">年龄：<s:property value="#user.age"/></span>
                        </div>
                        <div class="meta">
                            <span class="date">工作：<s:property value="#user.job"/></span>
                        </div>
                    </div>
                    <div class="extra content">
                        <a href="${pageContext.request.contextPath}/user/userinfo!detail.action?id=<s:property value="#user.id"/>"> 详情 </a>
                    </div>
                </div>
            </div>
        </div>
    </s:iterator>
</div>
</body>
</html>
