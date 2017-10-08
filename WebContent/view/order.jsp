<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	<h1>Reading All Request Parameters</h1><br/><br/><br/>
	
	<%-- JSP Expression Language --%>
<TABLE BORDER="1">
<TR><TD bgcolor="orange">Parameter Name</TD><TD bgcolor="orange">Parameter Value(s)</TD></TR>
<TR><TD>cardNum</TD><TD>${order.creditCardNumber}</TD></TR>
<TR><TD>cardType</TD><TD>${order.creditCard}</TD></TR>
<TR><TD>price</TD><TD>${order.price}</TD></TR>
<TR><TD>initial</TD><TD>${order.middleInitial}</TD></TR>
<TR><TD>itemNum</TD><TD>${order.itemNumber}</TD></TR>
<TR><TD>address</TD><TD>${order.shippingAddress}</TD></TR>
<TR><TD>firstName</TD><TD>${order.firstName}</TD></TR>
<TR><TD>description</TD><TD>${order.description}</TD></TR>
<TR><TD>lastName</TD><TD>${order.lastName}</TD></TR>
</TABLE>

</body>
</html>