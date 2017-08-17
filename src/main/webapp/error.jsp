<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: stiles
  Date: 2017/8/14
  Time: 下午2:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>错误</title>
    <jsp:include page="/util.jsp"/>
</head>
<body>
<div class="ui container">
    <h1>错误信息</h1>
    <div class="ui divider"></div>
    <i class="warning big red sign icon"></i> <s:property value="#request.errorMsg"/> <br>
    <div class="ui divider"></div>
    <button class="ui  labeled icon button" onclick="window.history.back()"><i class="left arrow icon"></i> 返回 </button>
</div>
</body>
</html>
