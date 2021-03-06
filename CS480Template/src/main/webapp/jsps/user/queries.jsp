<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="">
    
    <title>body</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h1>Query Results</h1>
    <br>
    <a href="<c:url value='/findAll'/>" target="body">list all the user in the table</a>&nbsp;&nbsp;
    <br>
    <a href="<c:url value='/ItemQuery'/>" target="body">list all the items in the table</a>&nbsp;&nbsp;    
    <br>
    <a href="<c:url value='/SalesQuery'/>" target="body">list all the sales with profit greater than minimum of the daily sale amount</a>&nbsp;&nbsp;
    <br>
    <a href="<c:url value='/ItemQuery2'/>" target="body">list all the items with concat and lower string formats</a>&nbsp;&nbsp;
    <br>
    <a href="<c:url value='/OfferQuery'/>" target="body">list all the offers with offer_id > 27</a>&nbsp;&nbsp;
    <br>
    <a href="<c:url value='/EmployeeQuery'/>" target="body">list all the employee</a>&nbsp;&nbsp;
    <br>
    <a href="<c:url value='/DeliveryQuery'/>" target="body">list all the delivery with delivery_cost >50</a>&nbsp;&nbsp;
    <br>
    <a href="<c:url value='/RestaurantQuery'/>" target="body">list all the restaurant and delivery_id on same restaurant_id</a>&nbsp;&nbsp;
    <br>
    <a href="<c:url value='/ItemQuery3'/>" target="body">list all the items with item_price sub_query</a>&nbsp;&nbsp;
    <br>
    <a href="<c:url value='/SalesQuery2'/>" target="body">list all the sales with where exits clause</a>&nbsp;&nbsp;
  </body>
</html>
