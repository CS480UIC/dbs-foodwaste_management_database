<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Update Employee Output</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">


  </head>
  
  <body>
    <h1>Update Employee Output</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form action="<c:url value='/EmployeeServletUpdate'/>" method="post">
    <input type="hidden" name="method" value="update"/>
	employee_id: <input type="text" name="employee_id" value="${employee.employee_id }" disabled/>
    <br/>
    employee_contact : <input type="text" name="employee_contact" value="${employee.employee_contact}"disabled/>
    <br/>
    employee_join_date: <input type="text" name="employee_join_date" value="${employee.employee_join_date}" disabled/>
    <br/>
</form>
<h1>Update the Values below</h1>
<form action="<c:url value='/EmployeeServletUpdate'/>" method="post">
    <input type="hidden" name="method" value="update"/>
    <input type="hidden" name="employee_id" value="${employee.employee_id}"/>
	employee_id: <input type="text" name="employee_id" value="${employee.employee_id }" />
    <br/>
    employee_contact : <input type="text" name="employee_contact" value="${employee.employee_contact}"/>
    <br/>
    employee_join_date: <input type="text" name="employee_join_date" value="${employee.employee_join_date}" />
    <br/>
    <input type="submit" value="Update Employee"/>
</form>
  </body>
</body>
</html>
