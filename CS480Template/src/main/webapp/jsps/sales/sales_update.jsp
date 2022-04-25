<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Update Sales</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">

  </head>
  
  <body>
  <h1>Update Sales</h1>
<form action="<c:url value='/SalesServletUpdate'/>" method="post">
	<input type="hidden" name="method" value="search"/>
	sale_id: <input type="text" name="sale_id" value="${form.sale_id }"/>
	<span style="color: red; font-weight: 900">${errors.sale_id }</span>
	<br/>
	<input type="submit" value="Update Sales"/>
</form>
  </body>
</html>