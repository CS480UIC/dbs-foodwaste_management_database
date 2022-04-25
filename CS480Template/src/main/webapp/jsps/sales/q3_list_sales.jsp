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
		<th>sale_id</th>
		<th>current_date</th>
		<th>profit</th>
	</tr>
<c:forEach items="${SalesList}" var="sales">
	<tr>
		<td>${sales.sale_id}</td>
		<td>${sales.current_date}</td>
		<td>${sales.profit}</td>	
	</tr>
</c:forEach>
</table>
</body>
</html>
