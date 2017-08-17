<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/util.jsp"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>主页</title>
</head>
<body>
<h2>Hello World!</h2>
<div class="ui two column grid">
    <div class="column">
        <a href="<s:url namespace="/user" action="userinfo"/>">
        <button class="fluid ui massive button" style="padding-top: 100px; padding-bottom: 100px;">
            <i class="users icon"></i>
            用户
        </button>
        </a>
    </div>
    <div class="column">
        <button class="fluid ui massive button" style="padding-top: 100px; padding-bottom: 100px;">
            <i class="user icon"></i>
            管理
        </button>
    </div>
</div>

<div class="ui selection dropdown">
    <input type="hidden" name="gender">
    <i class="dropdown icon"></i>
    <div class="default text">Gender</div>
    <div class="menu">
        <div class="item" data-value="1">Male</div>
        <div class="item" data-value="0">Female</div>
    </div>
</div>
</body>
</html>
