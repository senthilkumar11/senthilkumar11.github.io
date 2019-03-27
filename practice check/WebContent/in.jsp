<%@page import="practice.product"%>
<%@page import="practice.productdetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("name");
String brand=request.getParameter("brand");
String Cat=request.getParameter("ct");
double d=Double.parseDouble(request.getParameter("price"));
String des=request.getParameter("des");

productdetails p=new productdetails(1,name,brand,Cat,d,des);
product.add(p);
%>
<h6>Added Success</h6>
<jsp:include page="insert.jsp"></jsp:include>
</body>
</html>