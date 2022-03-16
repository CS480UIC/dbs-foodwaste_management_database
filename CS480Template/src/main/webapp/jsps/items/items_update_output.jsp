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
<form action="<c:url value='/ItemsServletRead'/>" method="post">
    <input type="hidden" name="method" value="items_search"/>
    item_id: <input type="text" name="employee_id" value="${form.item_id }"/>
    <span style="color: red; font-weight: 900">${errors.item_id }</span>
    <br/>
    item_price: <input type="text" name="item_price" value="${form.item_price }"/>
    <span style="color: red; font-weight: 900">${errors.item_price }</span>
    <br/>
    item_name: <input type="text" name="item_name" value="${form.item_name }"/>
    <span style="color: red; font-weight: 900">${errors.item_name }</span>
    <br/>
    item_in_date: <input type="text" name="item_in_date" value="${form.item_in_date }"/>
    <span style="color: red; font-weight: 900">${errors.item_in_date }</span>
    <br/>
    <input type="submit" value="Update Items"/>
</form>
  </body>
</body>
</html>
