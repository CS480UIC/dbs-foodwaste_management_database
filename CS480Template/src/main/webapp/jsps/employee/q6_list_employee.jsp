<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
	<h3 align="center"> Employee Table </h3>
	<table border="1" width="70%" align="center">
	<tr>
		<th>employee_id</th>
		<th>employee_contact</th>
		<th>employee_join_date</th>
		<th>restaurant_id</th>
	</tr>
<c:forEach items="${EmployeeList}" var="employee">
	<tr>
		<td>${employee.employee_id}</td>
		<td>${employee.employee_contact}</td>
		<td>${employee.employee_join_date}</td>
		<td>${employee.restaurant_id}</td>
	</tr>
</c:forEach>
</table>
</body>
</html>
