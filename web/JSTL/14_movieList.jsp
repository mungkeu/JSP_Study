<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/08/15
  Time: 12:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>EL & JSTL</title>
</head>
<body>
<%
    String[] movieList = {"타이타닉", "시네마 천국", "혹성 탈출", "킹콩"};
    pageContext.setAttribute("movieList", movieList);
%>
<table border="1" style="width:100%; text-align: center;">
<tr>
    <th>index</th>
    <th>count</th>
    <th>title</th>
</tr>
<c:forEach var="movie" items="${movieList}" varStatus="status">
<tr>
    <td>
        ${status.index}
    </td>
    <td>
        ${status.count}
    </td>
    <td>
        ${movie}<br>
    </td>
</tr>
</c:forEach>
</table>
</body>
</html>
