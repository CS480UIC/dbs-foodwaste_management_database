<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Update Offers Output</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">


  </head>
  
  <body>
    <h1>Update Offers Output</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form action="<c:url value='/OfferServletUpdate'/>" method="post">
    <input type="hidden" name="method" value="update"/>
    offer_id: <input type="text" name="offer_id" value="${offer.offer_id }" disabled/>
    <br/>
    offer_item_name: <input type="text" name="offer_item_name" value="${offer.offer_item_name }" disabled/>
    <br/>
    percentage_discount: <input type="text" name="percentage_discount" value="${offer.percentage_discount }" disabled/>
    <br/>
    restaurant_id: <input type="text" name="restaurant_id" value="${offer.restaurant_id }" disabled/>
    <br/>
</form>
<h1>Update the Values Below</h1>
<form action="<c:url value='/OfferServletUpdate'/>" method="post">
    <input type="hidden" name="method" value="update"/>
    <input type="hidden" name="offer_id" value="${offer.offer_id}"/>
    offer_id: <input type="text" name="offer_id" value="${offer.offer_id }"/>
    <br/>
    offer_item_name: <input type="text" name="offer_item_name" value="${offer.offer_item_name }"/>
    <br/>
    percentage_discount: <input type="text" name="percentage_discount" value="${offer.percentage_discount }"/>
    <br/>
    restaurant_id: <input type="text" name="restaurant_id" value="${offer.restaurant_id }"/>
    <br/>
    <input type="submit" value="Update Offers"/>
</form>
  </body>
</body>
</html>
