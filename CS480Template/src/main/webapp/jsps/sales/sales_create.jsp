<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Sales</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">


  </head>
  
  <body>
  <h1>Sales</h1>
<form action="<c:url value='/SalesServletCreate'/>" method="post">
	sale_id: <input type="text" name="sale_id" value="${form.sale_id }"/>
	<span style="color: red; font-weight: 900">${errors.sale_id }</span>
	<br/>
	daily_sale_amount: <input type="text" name="daily_sale_amount" value="${form.daily_sale_amount }"/>
	<span style="color: red; font-weight: 900">${errors.daily_sale_amount }</span>
	<br/>
	profit: <input type="text" name="profit" value="${form.profit }"/>
    <span style="color: red; font-weight: 900">${errors.profit }</span>
    <br/>
	sales_report <input type="text" name="sales_report" value="${form.sales_report}"/>
	<span style="color: red; font-weight: 900">${errors.sales_report }</span>
	<br/>
    current_date: <input type="text" name="current_date" value="${form.current_date }"/>
    <span style="color: red; font-weight: 900">${errors.current_date }</span>
    <br/>
	restaurant_id: <input type="text" name="restaurant_id" value="${form.restaurant_id }"/>
	<span style="color: red; font-weight: 900">${errors.restaurant_id }</span>
	<br/>
	<input type="submit" value="Create Sales"/>
</form>
  </body>
</html>