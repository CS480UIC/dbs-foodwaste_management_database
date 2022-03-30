<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Update Offers Output</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">


  </head>
  
  <body>
    <h1>Update Offers Output</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form action="<c:url value='/OffersServletUpdate'/>" method="post">
    <input type="hidden" name="method" value="offers_search"/>
    offers_id: <input type="text" name="offers_id" value="${form.offers_id }"/>
    <span style="color: red; font-weight: 900">${errors.offers_id }</span>
    <br/>
    offers_name: <input type="text" name="offers_name" value="${form.offers_name }"/>
    <span style="color: red; font-weight: 900">${errors.offers_name }</span>
    <br/>
    offers_description: <input type="text" name="offers_description" value="${form.offers_description }"/>
    <span style="color: red; font-weight: 900">${errors.offers_description }</span>
    <br/>
    offers_discount: <input type="text" name="offers_discount" value="${form.offers_discount }"/>
    <span style="color: red; font-weight: 900">${errors.offers_discount }</span>
    <br/>
    offers_start_date: <input type="text" name="offers_start_date" value="${form.offers_start_date }"/>
    <span style="color: red; font-weight: 900">${errors.offers_start_date }</span>
    <br/>
    offers_end_date: <input type="text" name="offers_end_date" value="${form.offers_end_date }"/>
    <span style="color: red; font-weight: 900">${errors.offers_end_date }</span>
    <br/>
    <input type="submit" value="Update Offers"/>
</form>
  </body>
</body>
</html>
