<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Update Sales Output</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">

  </head>
  
  <body>
  
    <h1>Update Sales Output</h1>

<p style="color: red; font-weight: 900">${msg }</p>

<form action="<c:url value='/SalesServletUpdate'/>" method="post">
    <input type="hidden" name="method" value="update"/>
    sale_id: <input type="text" name="sale_id" value="${sales.sale_id }" disabled/>
    <br/>
    daily_sale_amount: <input type="text" name="daily_sale_amount" value="${sales.daily_sale_amount }" disabled/>
    <br/>
    profit: <input type="text" name="profit" value="${sales.profit }" disabled/>
    <br/>
    sales_report: <input type="text" name="sales_report" value="${sales.sales_report }" disabled/>
    <br/>
    current_date: <input type="text" name="current_date" value="${sales.current_date }" disabled/>
    <br/>
    restaurant_id: <input type="text" name="restaurant_id" value="${sales.restaurant_id }" disabled/>
    <br/>
</form>
<h1>Update the Values Below</h1>
<form action="<c:url value='/SalesServletUpdate'/>" method="post">
    <input type="hidden" name="method" value="update"/>
     <input type="hidden" name="sale_id" value="${sales.sale_id}"/>
    daily_sale_amount: <input type="text" name="daily_sale_amount" value="${sales.daily_sale_amount}"/>
    <br/>
    profit: <input type="text" name="profit" value="${sales.profit}"/>
    <br/>
    sales_report: <input type="text" name="sales_report" value="${sales.sales_report}"/>
    <br/>
    current_date: <input type="text" name="current_date" value="${sales.current_date}"/>
    <br/>
    restaurant_id: <input type="text" name="restaurant_id" value="${sales.restaurant_id}"/>
    <br/>
    <input type="submit" value="Update Sales"/>
 </form>
  </body>
</body>
</html>
