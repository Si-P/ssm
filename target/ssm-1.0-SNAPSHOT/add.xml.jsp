<%--
  Created by IntelliJ IDEA.
  User: Andre
  Date: 2021/11/20
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
</head>
<body>
<div align="center" >
<form action="/ssm/student/add.do" method="post">
    <table>
        <tr>
            <td>游戏ID</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>性别</td>
            <td><input type="text" name="sex"></td>
        </tr>
        <tr>
            <td>邮箱</td>
            <td><input type="text" name="email"></td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
            <td><input type="submit" value="SUB"></td>
        </tr>
    </table>
</form>
</div>
</body>
</html>
