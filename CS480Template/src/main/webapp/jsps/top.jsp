<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>top</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	body {
		background: #FF0000; 
	}
	a {
		text-transform:none;
		text-decoration:none;
	} 
	a:hover {
		text-decoration:underline;
	}
</style>
  </head>
  
  <body>
<h1 style="text-align: center;">Food Waste Management System</h1>
<div style="font-size: 10pt;">
	<c:choose>
		<c:when test="${empty sessionScope.session_user }">
			<a href="<c:url value='/jsps/user/login.jsp'/>" target="_parent">Login</a> |&nbsp; 
			<a href="<c:url value='/jsps/user/regist.jsp'/>" target="_parent">Register</a> |&nbsp; 
			<a href="<c:url value='/jsps/initialize/init.jsp'/>" target="_parent">Initialize Database</a>
	
		</c:when>
		<c:otherwise>
			Hello：${sessionScope.session_user.username };
			<a href="<c:url value='/UserServletLogout'/>" target="_parent">Logout</a> |&nbsp; 
			<a href="<c:url value='/jsps/user/queries.jsp'/>" target="_parent">Query Results</a> |&nbsp;
			<a href="<c:url value='/jsps/offers/offers_menu.jsp'/>" target="body">Offers</a> |&nbsp;&nbsp;
			<a href="<c:url value='/jsps/sales/sales_menu.jsp'/>" target="body">Sales</a> |&nbsp;&nbsp;
			<a href="<c:url value='/jsps/delivery/delivery_menu.jsp'/>" target="body">Delivery</a> |&nbsp;&nbsp;
			<a href="<c:url value='/jsps/restaurant/restaurant_menu.jsp'/>" target="body">Restaurant</a> |&nbsp;&nbsp;
			<a href="<c:url value='/jsps/employee/employee_menu.jsp'/>" target="body">Employee</a> |&nbsp;&nbsp;
			<a href="<c:url value='/jsps/items/items_menu.jsp'/>" target="body">Items</a> |&nbsp;&nbsp;
		</c:otherwise>
	</c:choose>

</div>
  </body>
</html>

