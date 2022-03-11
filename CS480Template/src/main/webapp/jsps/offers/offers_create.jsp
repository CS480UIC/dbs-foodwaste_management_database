<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Offers</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">

  </head>
  
  <body>
  <h1>Offers</h1>
<form action="<c:url value='/OfferServletCreate'/>" method="post">
	offer_id： <input type="text" name="offer_id" value="${form.offer_id }"/>
	<span style="color: red; font-weight: 900">${errors.address_zip_code }</span>
	<br/>
	offer_item_name: <input type="text" name="offer_item_name" value="${form.offer_item_name }"/>
	<span style="color: red; font-weight: 900">${errors.address_streetaddress }</span>
	<br/>
	percentage_discount： <input type="text" name="percentage_discount" value="${form.percentage_discount }"/>
	<span style="color: red; font-weight: 900">${errors.address_zip_code }</span>
	<br/>
	<input type="submit" value="Create Offer"/>
</form>
  </body>
</html>