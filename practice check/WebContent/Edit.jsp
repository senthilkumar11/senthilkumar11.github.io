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
<body style="text-align: center;font-size: xx-large;font-style: italic; color: gray;">
<%
String x=request.getParameter("p");
int id=Integer.parseInt(x);
productdetails p=product.getproductbyid(id);
Cookie a=new Cookie("id", x);
response.addCookie(a);
%>
<h3>Product Id <%=id %></h3>
<form action="editdb.jsp" method="get">
Enter Name<br><input type="text" name="name"  required value=<%out.print(p.getName()); %> ><br>
Enter Brand<br><input type="text" name="brand" required value=<%out.print(p.getBrand()); %>  ><br>
Enter Category<br><input type="text" name="ct" required value=<%out.print(p.getCategory()); %> ><br>
Enter Price<br><input type="text" name="price" required value=<%out.print(p.getPrice()); %> ><br>
Enter description<br><input type="text" name="des" value=<%out.print(p.getDiscription()); %> ><br>
<input type="submit" value="Submit" style="font-size: large;font-style: oblique;color: maroon;">
</form>
<h4 style="float:right;padding-right: 100px"><a href="product.jsp"><button style="padding:12px 40px;font-size:25px;border-radius: 15px">Home page</button></a></h4>
</body>

</html>