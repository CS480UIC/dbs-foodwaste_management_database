<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Delete Sales Output</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">


  </head>
  
  <body>
    <h1>Delete Sales Output</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form action="<c:url value='/SalesServletDelete'/>" method="post">
    <input type="hidden" name="method" value="sales_search"/>
    sales_id: <input type="text" name="sales_id" value="${form.sales_id }"/>
    <span style="color: red; font-weight: 900">${errors.sales_id }</span>
    <br/>
    sales_date: <input type="text" name="sales_date" value="${form.sales_date }"/>
    <span style="color: red; font-weight: 900">${errors.sales_date }</span>
    <br/>
    sales_amount: <input type="text" name="sales_amount" value="${form.sales_amount }"/>
    <span style="color: red; font-weight: 900">${errors.sales_amount }</span>
    <br/>
    <input type="submit" value="Delete Sales"/>
</form>
  </body>

  </body>
</body>
</html>