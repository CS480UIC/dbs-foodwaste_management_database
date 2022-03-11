<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Read Employee Output</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">


  </head>
  
  <body>
    <h1>Read Employee Output</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form action="<c:url value='/EmployeeServletRead'/>" method="post">
    <input type="hidden" name="method" value="employee_search"/>
    employee_id: <input type="text" name="employee_id" value="${form.employee_id }"/>
    <span style="color: red; font-weight: 900">${errors.employee_id }</span>
    <br/>
    employee_name: <input type="text" name="employee_name" value="${form.employee_name }"/>
    <span style="color: red; font-weight: 900">${errors.employee_name }</span>
    <br/>
    employee_address: <input type="text" name="employee_address" value="${form.employee_address }"/>
    <span style="color: red; font-weight: 900">${errors.employee_address }</span>
    <br/>
    employee_phone: <input type="text" name="employee_phone" value="${form.employee_phone }"/>
    <span style="color: red; font-weight: 900">${errors.employee_phone }</span>
    <br/>
    employee_email: <input type="text" name="employee_email" value="${form.employee_email }"/>
    <span style="color: red; font-weight: 900">${errors.employee_email }</span>
    <br/>
    employee_salary: <input type="text" name="employee_salary" value="${form.employee_salary }"/>
    <span style="color: red; font-weight: 900">${errors.employee_salary }</span>
    <br/>
    <input type="submit" value="Read Employee"/>
</form>
  </body>
</body>
</html>
