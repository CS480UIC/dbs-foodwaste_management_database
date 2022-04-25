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
    <input type="hidden" name="method" value="delete"/>
    <input type="hidden" name="sale_id" value="${sales.sale_id}"/>
    sale_id: <input type="text" name="sale_id" value="${sales.sale_id }" disabled/>
    <span style="color: red; font-weight: 900">${errors.sales_id }</span>
    <br/>
    daily_sale_amount: <input type="text" name="daily_sale_amount" value="${sales.daily_sale_amount }" disabled/>
    <span style="color: red; font-weight: 900">${errors.daily_sale_amount }</span>
    <br/>
    profit: <input type="text" name="profit" value="${sales.profit }" disabled/>
    <span style="color: red; font-weight: 900">${errors.profit }</span>
    <br/>
    sales_report: <input type="text" name="sales_report" value="${sales.sales_report }" disabled/>
    <span style="color: red; font-weight: 900">${errors.sales_report }</span>
    <br/>
    current_date: <input type="text" name="current_date" value="${sales.current_date }" disabled/>
    <span style="color: red; font-weight: 900">${errors.current_date }</span>
    <br/>
    restaurant_id: <input type="text" name="restaurant_id" value="${sales.restaurant_id }" disabled/>
    <span style="color: red; font-weight: 900">${errors.restaurant_id }</span>
    <br/>
    <input type="submit" value="Delete Sales"/>
</form>
  </body>

  </body>
</body>
</html>