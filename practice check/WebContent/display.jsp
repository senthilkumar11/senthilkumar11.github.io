<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.List" %>
 <%@page import="practice.product" %>
 <%@page import="practice.connectdb" %>
 <%@page import="practice.productdetails" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="text-align: center;font-size: xx-large;font-style: italic; color: gray;">
<%List<productdetails> p=product.getAllProducts();  %>
<table border='1' width='100%'>

<tr><th>Product Id</th><th>Name</th><th>Brand</th><th>Category</th><th>Price</th><th>Edit</th><th>Delete</th></tr>
<%for(productdetails pd:p) {
	out.print("<tr><td>"+pd.getId()+"</td><td>"+pd.getName()+"</td><td>"+pd.getBrand()+"</td><td>"+pd.getCategory()+"</td><td>"+pd.getPrice()+"</td><td><a href='Edit.jsp?p="+pd.getId()+"'>edit</a></td><td><a href='delete.jsp?id="+pd.getId()+"'>delete</a></td></tr>");
} %>
</table>
<h4 style="float:right;padding-right: 100px"><a href="product.jsp"><button style="padding:12px 40px;font-size:25px;border-radius: 15px">Home page</button></a></h4>
</body>
</html>