<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Read Restaurant Output</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">


  </head>
  
  <body>
  <h1>Read Restaurant Output</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form action="<c:url value='/RestaurantServletRead'/>" method="post">
    <input type="hidden" name="method" value="restaurant_search"/>
    restaurant_id: <input type="text" name="restaurant_id" value="${restaurant.restaurant_id }" disabled/>
    <br/>
    start_time : <input type="text" name="start_time" value="${restaurant.start_time }" disabled/>
    <br/>
    restaurant_address: <input type="text" name="restaurant_address" value="${restaurant.restaurant_address }" disabled/>
    <br/>
    restaurant_contact: <input type="text" name="restaurant_contact" value="${restaurant.restaurant_contact }" disabled/>
    <br/>
</form>
<button onclick="window.location.href='<c:url value='/jsps/main.jsp'/>'">Continue</button>
  </body>
</body>
</html>
