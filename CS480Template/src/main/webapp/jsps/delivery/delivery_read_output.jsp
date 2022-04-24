<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Read Delivery Output</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">


  </head>
  
  <body>
  <h1>Read Delivery Output</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form action="<c:url value='/DeliveryServletRead'/>" method="post">
    <input type="hidden" name="method" value="delivery_search"/>
    delivery_id: <input type="text" name="delivery_id" value="${delivery.delivery_id }" disabled/>
    <br/>
    delivery_date_time : <input type="text" name="delivery_date_time" value="${delivery.delivery_date_time }" disabled/>
    <br/>
    delivery_address: <input type="text" name="delivery_address" value="${delivery.delivery_address }" disabled/>
    <br/>
    delivery_cost: <input type="text" name="delivery_cost" value="${delivery.delivery_cost }" disabled/>
    
</form>
<button onclick="window.location.href='<c:url value='/jsps/main.jsp'/>'">Continue</button>
  </body>
</body>
</html>
