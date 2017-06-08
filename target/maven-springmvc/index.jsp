<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>OASystem</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
</head>
<body>
<h2>Hello World!</h2>
<p>The time on server is </p>
<script type="text/javascript">
    var today = new Date();
    var date = today.getDate();
    var hour = today.getHours();
    var min = today.getMinutes();
    var sec = today.getSeconds();
    var month = today.getMonth()+1;
    var year = today.getFullYear();
    document.write(year+"-"+month+"-"+date+"  "+hour+":"+min+":"+sec+"<br />");
</script>
<form id="" action="dologin" method="post">
    <label>User Name</label>
    <input tyep="text" name="userName" maxLength="40" />
    <label>Password</label>
    <input type="password" name="password" />
    <input type="submit" value="login" />
</form>
<table class="table table-striped" border="1" cellspacing="0" cellpadding="10">
    <tr class="success">
        <th>ID</th>
        <th>LastName</th>
        <th>Email</th>
    </tr>

    <c:forEach items="${requestScope.employees}" var="emp">
        <tr class="danger">
            <td>${emp.id}</td>
            <td>${emp.lastName}</td>
            <td>${emp.email}</td>
        </tr>
    </c:forEach>
</table>
<%--用于输入后台返回的验证错误信息 --%>
<P><c:out value="${message }" /></P>
</body>
</html>
