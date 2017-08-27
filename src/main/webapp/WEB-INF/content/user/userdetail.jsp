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
    <jsp:include page="/util.jsp"/>
</head>
<body>
<div class="ui fluid center aligned text container" style="padding: 20px;font-family:'Microsoft Yahei','simsun',serif">
    <h2 class="ui left aligned header">
        <img src="${pageContext.request.contextPath}/photo/<s:property value="#request.user.id"/>/1.jpg"
             class="ui circular image">
        <s:property value="#request.user.name"/>
    </h2>
    <div class="ui tiny horizontal divider header"><i class="bar chart tiny icon"></i> 基本信息</div>
    <p id="sex">性别：男</p>
    <p>身高：<s:property value="#request.user.height"/> CM </p>
    <p>年龄：<s:property value="#request.user.age"/> 岁 </p>
    <p id="birth">生日：<s:date name="#request.user.birth" format="yyyy 年 MM 月 dd 日"/></p>

    <div class="ui tiny horizontal divider header"><i class="student icon"></i> 学历及工作</div>
    <p id="edu">学历：小学 </p>
    <p>收入：<s:property value="#request.user.income"/></p>
    <p>工作：<s:property value="#request.user.job"/></p>
    <p>工作地点：<s:property value="#request.user.workplace"/></p>

    <div class="ui tiny horizontal divider header"><i class="book icon"></i> 简 介</div>
    <div class="ui left aligned text container" style="font-family: 'simsun'">
        <h3 class="ui header">性 格</h3>
        <p><s:property value="#request.user.character"/></p>
        <div class="ui divider"></div>
        <h3 class="ui header">自我介绍</h3>
        <p><s:property value="#request.user.intro"/></p>
        <div class="ui divider"></div>
        <h3 class="ui header">需 求</h3>
        <p><s:property value="#request.user.requirement"/></p>
    </div>
    <div class="ui tiny horizontal divider header"><i class="camera retro icon"></i> 相 片</div>
    <img class="ui rounded bordered fluid image"
         id="p1"
         onerror="error(1)"
         src="${pageContext.request.contextPath}/photo/<s:property value="#request.user.id"/>/1.jpg">
    <div id="d1" class="ui divider"></div>
    <img class="ui rounded bordered fluid image"
         id="p2"
         onerror="error(2)"
         src="${pageContext.request.contextPath}/photo/<s:property value="#request.user.id"/>/2.jpg">
    <div id="d2" class="ui divider"></div>
    <img class="ui rounded bordered fluid image"
         id="p3"
         onerror="error(3)"
         src="${pageContext.request.contextPath}/photo/<s:property value="#request.user.id"/>/3.jpg">
    <div id="d3" class="ui divider"></div>
    <img class="ui rounded bordered fluid image"
         id="p4"
         onerror="error(4)"
         src="${pageContext.request.contextPath}/photo/<s:property value="#request.user.id"/>/4.jpg">
    <div id="d4" class="ui divider"></div>
    <img class="ui rounded bordered fluid image"
         id="p5"
         onerror="error(5)"
         src="${pageContext.request.contextPath}/photo/<s:property value="#request.user.id"/>/5.jpg">
    <div id="d5" class="ui divider"></div>
    <img class="ui rounded bordered fluid image"
         id="p6"
         onerror="error(6)"
         src="${pageContext.request.contextPath}/photo/<s:property value="#request.user.id"/>/6.jpg">
    <div id="d6" class="ui divider"></div>
</div>
</body>
<script>
    function sex() {
        var v = <s:property value="#request.user.sex"/>;
        if (v === 1) return "男";
        else return "女";
    }

    function edu() {
        var v = <s:property value="#request.user.edu"/>;
        if (v === 1) return "初中";
        if (v === 2) return "中专";
        if (v === 3) return "高中";
        if (v === 4) return "大专";
        if (v === 5) return "本科";
        if (v === 6) return "硕士";
        if (v === 7) return "博士";
        else return "小学"
    }

    function error(i) {
        var img = document.getElementById("p"+i);
        img.style.display='none';
        var div = document.getElementById("d"+i);
        div.style.display='none';
    }

    $(document).ready(function () {
        document.getElementById("sex").innerHTML = "性别：" + sex();
        document.getElementById("edu").innerHTML = "学历：" + edu();
    });

</script>
</html>
