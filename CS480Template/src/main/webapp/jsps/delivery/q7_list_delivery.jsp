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
		<th>delivery_id</th>
		<th>delivery_date_time</th>
		<th>delivery_address</th>
		<th>delivery_cost</th>
		<th>restaurant_id</th>
	</tr>
<c:forEach items="${DeliveryList}" var="delivery">
	<tr>
		<td>${delivery.delivery_id}</td>
		<td>${delivery.delivery_date_time}</td>
		<td>${delivery.delivery_address}</td>
		<td>${delivery.delivery_cost}</td>
		<td>${delivery.restaurant_id}</td>
	</tr>
</c:forEach>
</table>
</body>
</html>
