<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Delete Offers Output</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">


  </head>
  
  <body>
    <h1>Delete Offers Output</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form action="<c:url value='/OffersServletDelete'/>" method="post">
    <input type="hidden" name="method" value="offers_search"/>
    offer_id: <input type="text" name="offer_id" value="${form.offer_id }"/>
    <span style="color: red; font-weight: 900">${errors.offer_id }</span>
    <br/>
    offer_name: <input type="text" name="offer_name" value="${form.offer_name }"/>
    <span style="color: red; font-weight: 900">${errors.offer_name }</span>
    <br/>
    offer_description: <input type="text" name="offer_description" value="${form.offer_description }"/>
    <span style="color: red; font-weight: 900">${errors.offer_description }</span>
    <br/>
    offer_price: <input type="text" name="offer_price" value="${form.offer_price }"/>
    <span style="color: red; font-weight: 900">${errors.offer_price }</span>
    <br/>
    offer_discount: <input type="text" name="offer_discount" value="${form.offer_discount }"/>
    <span style="color: red; font-weight: 900">${errors.offer_discount }</span>
    <br/>
    offer_start_date: <input type="text" name="offer_start_date" value="${form.offer_start_date }"/>
    <span style="color: red; font-weight: 900">${errors.offer_start_date }</span>
    <br/>
    offer_end_date: <input type="text" name="offer_end_date" value="${form.offer_end_date }"/>
    <span style="color: red; font-weight: 900">${errors.offer_end_date }</span>
    <br/>
    <input type="submit" value="Delete Offers"/>
</form>
  </body>

  </body>
</body>
</html>