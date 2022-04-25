<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
	<h3 align="center"> Offer Table </h3>
	<table border="1" width="70%" align="center">
	<tr>
		<th>offer_id</th>
		<th>offer_item_name</th>
		<th>percentage_discount</th>
		<th>restaurant_id</th>
	</tr>
<c:forEach items="${OfferList}" var="offer">
	<tr>
		<td>${offer.offer_id}</td>
		<td>${offer.offer_item_name}</td>
		<td>${offer.percentage_discount}</td>
		<td>${offer.restaurant_id}</td>
	</tr>
</c:forEach>
</table>
</body>
</html>
