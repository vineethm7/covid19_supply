<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Update Hospital</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <h1>Update Hospital</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
	hospital_id    :<input type="text" name="hospital_id" value="${hospital.hospital_id}" disabled/>
	<br/>
	hospital_name：<input type="text" name="hospital_name" value="${hospital.hospital_name}" disabled/>
	<br/>
	hospital_address	：<input type="text" name="customer_address" value="${hospital.hospital_address}" disabled/>
	<br/>
	delivery_id    :<input type="text" name="delivery_id" value="${hospital.delivery_id }" disabled/>
	<br/>
</form>
<h1>Update the values below</h1>
<form action="<c:url value='/HospitalServletUpdate'/>" method="post">
		<input type="hidden" name="method" value="update"/>
				<input type="hidden" name="username" value="${hospital.hospital_id}"/>
	hospital_name：<input type="text" name="hospital_name" value="${form.hospital_name }"/>
	<span style="color: red; font-weight: 900">${errors.hospital_name }</span>
	<br/>
	hospital_address	：<input type="text" name="hospital_address" value="${form.hospital_address }"/>
	<span style="color: red; font-weight: 900">${errors.hospital_address }</span>
	<br/>
	delivery_id	：<input type="text" name="delivery_id" value="${form.delivery_id }"/>
	<span style="color: red; font-weight: 900">${errors.delivery_id }</span>
	<br/>
	<input type="submit" value="Update Hospital"/>
</form>

</body>
</html>
