<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
	<h3 align="center"> User Table </h3>
	<table border="1" width="70%" align="center">
	<tr>
		<th>item_name</th>
		<th>count</th>
		<th>sum</th>
	</tr>
<c:forEach items="${ItemList}" var="item">
	<tr>
		<td>${item.item_name}</td>
		<td>${item.count}</td>
		<td>${item.sum}</td>
	</tr>
</c:forEach>
</table>
</body>
</html>
