<%--
  Created by IntelliJ IDEA.
  User: Andre
  Date: 2021/11/21
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询结果</title>
    <script type="text/javascript" src="/ssm/jquery/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function (){
            $.ajax({
                url:"student/find.do",
                type:"post",
                dataType:"json",
                success:function(resp){
                    $.each(resp,function (i,n){
                        $("#info").append("<tr>")
                        .append("<td>"+n.id+"</td>")
                        .append("<td>"+n.name+"</td>")
                        .append("<td>"+n.email+"</td>")
                        .append("</tr>")
                    })
                }
            })
        })
    </script>
</head>
<body>
<div align="center">
    <table>
        <thead>
        <tr>
            <td>序号</td>
            <td>游戏ID</td>
            <td>邮箱</td>
        </tr>
        </thead>
        <tbody id="info" >

        </tbody>
    </table>
</div>
</body>
</html>
