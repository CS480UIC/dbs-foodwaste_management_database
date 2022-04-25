<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Delete Restaurant Output</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">


  </head>
  
  <body>
  <h1>Delete Restaurant  Output</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form action="<c:url value='/RestaurantServletDelete'/>" method="post">
    <input type="hidden" name="method" value="delete"/>
    <input type="hidden" name="restaurant_id" value="${restaurant.restaurant_id}"/>
    restaurant_id: <input type="text" name="restaurant_id" value="${restaurant.restaurant_id }" disabled/>
    <span style="color: red; font-weight: 900">${errors.restaurant_id }</span>
    <br/>
    start_time : <input type="text" name="start_time" value="${restaurant.start_time }" disabled/>
    <span style="color: red; font-weight: 900">${errors.start_time }</span>
    <br/>
    end_time : <input type="text" name="end_time" value="${restaurant.end_time }" disabled/>
    <span style="color: red; font-weight: 900">${errors.end_time }</span>
    <br/>
    restaurant_address: <input type="text" name="restaurant_address" value="${restaurant.restaurant_address}" disabled/>
    <span style="color: red; font-weight: 900">${errors.restaurant_address }</span>
    <br/>
    restaurant_contact: <input type="text" name="restaurant_contact" value="${restaurant.restaurant_contact }" disabled/>
    <span style="color: red; font-weight: 900">${errors.restaurant_contact}</span>
    <br/>
    restaurant_name: <input type="text" name="restaurant_name" value="${restaurant.restaurant_name }" disabled/>
    <span style="color: red; font-weight: 900">${errors.restaurant_name }</span>
    <br/>
    <input type="submit" value="Delete Restaurant"/>
</form>

  </body>

  </body>
</body>
</html>