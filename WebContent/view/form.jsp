<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
	<% String bgColor = request.getParameter("bgColor");
	if((bgColor ==null)|| (bgColor.trim().equals(""))){
		bgColor = "papayawhip";
	}
	%>
	<BODY BGCOLOR="<%= bgColor %>">
<body>


	<h1>WebFrameWork Homework1</h1><br/><br/><br/>
	
	
	<form action = "/helloMVC/doOrder" method="get">
		Item Number
		<input type="text" name="itemNumber"/><br/>
		Description:
		<input type="text" name="description"/><br/>
		Price Each:
		<input type="text" name="price"/><br/>
		<hr>
		First Name:
		<input type="text" name="firstName"/><br/>
		Last Name:
		<input type="text" name="lastName"/><br/>
		Middle Initial:
		<input type="text" name="middleInitial"/><br/>
		Shipping Address:
		<input type="text" style="height:150px;" name="shippingAddress"/><br/>
		CreditCard:<br/>
		<input type="radio" name="creditCard" value="visa"/>Visa<br/>
		<input type="radio" name="creditCard" value="MasterCard"/>MasterCard<br/>
		<input type="radio" name="creditCard" value="American Express"/>American Express<br/>
		<input type="radio" name="creditCard" value="Discover"/>Discover<br/>
		<input type="radio" name="creditCard" value="Java SmartCard"/>SmartCard<br/>
		Credit Card Number:
		<input type="password" name="creditCardNumber"/><br/>
		Repeat Credit Card Number:
		<input type="password" name="RepeatCreditCardNumber"/><br/><br/><br/>
		
		<input type="submit" value ="Submit Order" />
		</form>
	
</body>
</html>