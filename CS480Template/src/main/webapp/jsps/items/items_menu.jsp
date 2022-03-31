<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="">
    
    <title>Items</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	

  </head>
  
  <body>
    <h1>CRUD operations for Items</h1>
    <br>
	<a href="<c:url value='/jsps/items/items_create.jsp'/>" target="_parent">Create Items</a> |&nbsp;
	<a href="<c:url value='/jsps/items/items_read.jsp'/>" target="_parent">Read Items</a> |&nbsp;
	<a href="<c:url value='/jsps/items/items_update.jsp'/>" target="_parent">Update Items</a> |&nbsp;
	<a href="<c:url value='/jsps/items/items_delete.jsp'/>" target="_parent">Delete Items</a>
	
	    
  </body>
</html>