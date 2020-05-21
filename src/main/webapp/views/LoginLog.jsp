<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>Title</title>
</head>
<body>
    <h1 style="text-align: center">${user_name}的登录记录</h1>
    <table border="1" align="center" width="70%">

        <tr>
            <td>登录编号</td>
            <td>登录地址</td>
            <td>登录时间</td>
            <td>用户编号</td>
        </tr>

        <c:forEach var="u" items="${userlogList}" step="1">
            <tr>
                <td><c:out value="${u.login_id}"></c:out></td>
                <td><c:out value="${u.login_ip}"></c:out></td>
                <td><c:out value="${u.login_time}"></c:out></td>
                <td><c:out value="${u.user_id}"></c:out></td>
            </tr>

        </c:forEach>
    </table>
</body>
</html>
