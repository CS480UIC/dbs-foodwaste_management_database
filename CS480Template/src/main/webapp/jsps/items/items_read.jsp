<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Read items</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">


  </head>
  
  <body>
  <h1>Read items</h1>
<form action="<c:url value='/ItemsServletRead'/>" method="post">
	<input type="hidden" name="method" value="item_register"/>
	item_id: <input type="text" name="item_id" value="${form.item_id }"/>
	<span style="color: red; font-weight: 900">${errors.item_id }</span>
	<br/>
	<input type="submit" value="Read items"/>
</form>
  </body>
</html>

