<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="practice.product"%>
<%@page import="practice.productdetails"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="text-align: center;font-size: xx-large;font-style: italic; color: gray;">
<%
try{
	Cookie[] cookie = request.getCookies();
	String x=cookie[0].getName();
	String y=cookie[0].getValue();
	cookie[0].setMaxAge(0);
	out.print(cookie[0].getValue());
int id=Integer.parseInt(y);
String name=request.getParameter("name");
String brand=request.getParameter("brand");
String Cat=request.getParameter("ct");
double d=Double.parseDouble(request.getParameter("price"));
String des=request.getParameter("des");

productdetails p=new productdetails(id,name,brand,Cat,d,des);

product.update(p);
}
catch(Exception e)
{
	out.print(e);
}
%>
<h6>Update Success</h6>
<jsp:include page="display.jsp"></jsp:include>
</body>
</html>