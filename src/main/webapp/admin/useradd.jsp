<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/util.jsp"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/components/calendar.min.css">
    <script src="${pageContext.request.contextPath}/js/components/calendar.min.js" charset="utf-8"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>添加信息</title>
</head>
<body>
<div class="ui container" style="font-family:'Microsoft Yahei','simsun',serif">
    <h1>个人信息</h1>
    <div class="ui divider"></div>
    <form name="form1" action="useradd.action" method="post" onsubmit="return check()">
        <table class="ui celled table">
            <tbody>
            <tr>
                <td>
                    <div class="ui big ribbon label">手机号</div>
                </td>
                <td>
                    <div class="ui input">
                        <input type="text" name="id">
                    </div>
                    <div id="id" style="display: none;" class="ui left pointing red basic label">
                        此处不能为空！
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="ui big ribbon label">姓名</div>
                </td>
                <td>
                    <div class="ui input">
                        <input type="text" name="name">
                    </div>
                    <div id="name" style="display: none;" class="ui left pointing red basic label">
                        此处不能为空！
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="ui big ribbon label">性别</div>
                </td>
                <td>
                    <div class="ui form">
                        <div class="inline fields">
                            <div class="field">
                                <div class="ui radio">
                                    <label>
                                        <input type="radio" name="sex" value="1">
                                        <i class="man icon blue"></i>男
                                    </label>
                                </div>
                            </div>
                            <div class="field">
                                <div class="ui radio">
                                    <label>
                                        <input type="radio" name="sex" value="0">
                                        <i class="woman icon pink"></i>女
                                    </label>
                                </div>
                            </div>
                            <div id="sex" style="display: none;" class="ui left pointing red basic label">
                                此处不能为空！
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="ui big ribbon label">身高</div>
                </td>
                <td>
                    <div class="ui input">
                        <label>
                            <input type="text" name="height"> CM
                        </label>
                    </div>
                    <div id="height" style="display: none;" class="ui left pointing red basic label">
                        此处不能为空！
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="ui big ribbon label">生日</div>
                </td>
                <td>
                    <div class="ui calendar" id="birth">
                        <div class="ui input left icon">
                            <i class="calendar icon"></i>
                            <input type="text" name="birth" placeholder="Date" value="">
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="ui big ribbon label">身份证</div>
                </td>
                <td>
                    <div class="ui input">
                        <input type="text" name="IDno">
                    </div>
                    <div id="IDno" style="display: none;" class="ui left pointing red basic label">
                        此处不能为空！
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="ui big ribbon label">学历</div>
                </td>
                <td>
                    <label>
                        <select name="edu" class="ui selection dropdown">
                            <option value="">学历...</option>
                            <option value="0">小学</option>
                            <option value="1">初中</option>
                            <option value="2">中专</option>
                            <option value="3">高中</option>
                            <option value="4">大专</option>
                            <option value="5">本科</option>
                            <option value="6">硕士</option>
                            <option value="7">博士</option>
                        </select>
                    </label>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="ui big ribbon label">性格</div>
                </td>
                <td>
                    <div class="ui form">
                        <div class="field">
                            <label>
                                <textarea rows="2" name="character"></textarea>
                            </label>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="ui big ribbon label">工作</div>
                </td>
                <td>
                    <div class="ui input">
                        <input type="text" name="job">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="ui big ribbon label">工作地</div>
                </td>
                <td>
                    <div class="ui form">
                        <div class="field">
                            <label>
                                <textarea rows="2" name="workplace"></textarea>
                            </label>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="ui big ribbon label">收入</div>
                </td>
                <td>
                    <div class="ui input">
                        <label>
                            ¥ <input type="text" name="income">
                        </label>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="ui big ribbon label">期望</div>
                </td>
                <td>
                    <div class="ui form">
                        <div class="field">
                            <label>
                                <textarea rows="2" name="requirement"></textarea>
                            </label>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="ui big ribbon label">自我介绍</div>
                </td>
                <td>
                    <div class="ui form">
                        <div class="field">
                            <label>
                                <textarea rows="2" name="intro"></textarea>
                            </label>
                        </div>
                    </div>
                </td>
            </tr>
            </tbody>
            <tfoot>
            <tr align="center">
                <th colspan="3">
                    <button class="ui primary button" type="submit">
                        保存
                    </button>
                    <button class="ui button" type="reset">
                        重写
                    </button>
                </th>
            </tr>
            </tfoot>
        </table>
    </form>
</div>
</body>
<script>
    $('#birth').calendar({
        type: 'date',
        formatter: { // 自定义日期的格式
            date: function (date, settings) {
                if (!date) return '';
                var year = date.getFullYear();
                var month = date.getMonth() + 1;
                var day = date.getDate();
                month = month < 10 ? '0' + month : month;
                day = day < 10 ? '0' + day : day;
                return year + '-' + month + '-' + day;
            }
        }
    });

    function check() {
        if (document.form1.id.value === "") {
            //language=JQuery-CSS
            $("#id").show();
            document.form1.id.focus();
            return false;
        } else if (document.form1.name.value === "") {
            $("#name").show();
            document.form1.name.focus();
            return false;
        } else if (document.form1.sex.value === "") {
            $("#sex").show();
            return false;
        } else if (document.form1.height.value === "") {
            $("#height").show();
            document.form1.height.focus();
            return false;
        } else if (document.form1.IDno.value === "") {
            $("#IDno").show();
            document.form1.IDno.focus();
            return false;
        }
        return true;
    }
</script>
</html>
