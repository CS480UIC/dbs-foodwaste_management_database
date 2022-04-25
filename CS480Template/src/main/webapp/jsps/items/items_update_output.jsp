<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Update Items Output</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">


  </head>
  
  <body>
    <h1>Update Items Output</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form action="<c:url value='/ItemsServletUpdate'/>" method="post">
    <input type="hidden" name="method" value="update"/>
    <input type="hidden" name="item_id" value="${items.item_id}" disabled/>
    item_id: <input type="text" name="item_id" value="${items.item_id }" disabled/>
    <br/>
    item_price: <input type="text" name="item_price" value="${items.item_price }" disabled/>
    <br/>    
    item_name: <input type="text" name="item_name" value="${items.item_name }" disabled/>
    <br/>
    item_in_date: <input type="text" name="item_in_date" value="${items.item_in_date }" disabled/>
    <br/>
    item_expiry_date: <input type="text" name="item_expiry_date" value="${items.item_expiry_date }" disabled/>
    <br/>
</form>
<h1>Update the Values below</h1>
<form action="<c:url value='/ItemsServletUpdate'/>" method="post">
    <input type="hidden" name="method" value="update"/>
    <input type="hidden" name="item_id" value="${items.item_id}"/>
    item_id: <input type="text" name="item_id" value="${items.item_id }"/>
    <br/>
    item_price: <input type="text" name="item_price" value="${items.item_price }"/>
    <br/>    
    item_name: <input type="text" name="item_name" value="${items.item_name }"/>
    <br/>
    item_in_date: <input type="text" name="item_in_date" value="${items.item_in_date }"/>
    <br/>
    item_expiry_date: <input type="text" name="item_expiry_date" value="${items.item_expiry_date }"/>
    <br/>
    <input type="submit" value="Update Items"/>
</form>
  </body>
</body>
</html>
