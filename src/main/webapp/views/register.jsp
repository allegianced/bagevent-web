<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2020/5/21
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>百格注册</title>
</head>
<body>
<form action="add" method="post">
    <table  align="center" >
        <tr>
            <td colspan="2" align="center"><b>百格用户注册</b></td>
        </tr>
        <tr></tr>
        <tr></tr>
        <tr>
            <td colspan="2" style="color: red">${msg}</td>
        </tr>
        <tr>
            <td>用户名</td>
            <td><input type="text"  name="user_name"/></td>
        </tr>
        <tr>
            <td>密&nbsp;&nbsp;码</td>
            <td><input type="password"  name="password"/></td>
        </tr>
        <tr>
            <td>电&nbsp;&nbsp;话</td>
            <td><input type="text"  name="cellphone"/></td>
        </tr>
        <tr>
            <td>邮&nbsp;&nbsp;箱</td>
            <td><input type="text"  name="email"/></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="提交"/></td>
        </tr>
    </table>
</form>
</body>
</html>
