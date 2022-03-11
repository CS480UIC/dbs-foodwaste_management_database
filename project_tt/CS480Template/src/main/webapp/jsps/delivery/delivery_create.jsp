<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Delivery</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">


  </head>
  
  <body>
  <h1>Delivery</h1>
<form action="<c:url value='/DeliveryServletCreate'/>" method="post">
	delivery_id <input type="text" name="delivery_id" value="${form.delivery_id}"/>
	<span style="color: red; font-weight: 900">${errors.delivery_id }</span>
	<br/>
    delivery_date_time: <input type="text" name="delivery_date_time" value="${form.delivery_date_time}"/>
    <span style="color: red; font-weight: 900">${errors.delivery_date_time }</span>
    <br/>
    delivery_address: <input type="text" name="delivery_address" value="${form.delivery_address}"/>
    <span style="color: red; font-weight: 900">${errors.delivery_address }</span>
    <br/>
    delivery_cost: <input type="text" name="delivery_cost" value="${form.delivery_cost}"/>
    <span style="color: red; font-weight: 900">${errors.delivery_cost }</span>
    <br/>
	<input type="submit" value="Create Delivery"/>
</form>
  </body>
</html>