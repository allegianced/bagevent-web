<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2020/5/21
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>百格</title>
</head>
<body>

    <form action="loginto" method="post">
        <table align="center">
            <tr>
                <td colspan="2"><strong>百格欢迎您登录</strong></td>
            </tr>
            <tr></tr>
            <tr></tr>
            <tr>
                    <td colspan="2" style="color: red">${msg}</td>
            </tr>
            <tr>
                <td>用户名</td>
                <td><input type="text" name="user_name"/></td>
            </tr>
            <tr>
                <td>密码</td>
                <td><input type="password" name="password"/></td>
            </tr>

            <tr>
                <td colspan="1"><input type="submit" value="登录"/></td>
                <td colspan="1"><input type="button" value="注册" onclick="window.open('toregister');"/></td>
            </tr>
        </table>
    </form>
</body>
</html>
