<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style >

body {
  background-color:silver;
  position: static;
  padding: 5px;
  text-align: Right;
  font-size: 35px;
  color: white;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%try
{
	session.getAttribute("id");
	%>

<img alt="shop" src="grizzly.png"  style="position:absolute ;top:30px;left:30px;width:350px;height:80px;border:0;float:left;">
<p>Welcome <%out.println(session.getAttribute("name").toString()); %><a href="Logout.jsp" target="_top"><button style="padding:12px 40px;font-size:25px;border-radius: 15px">Logout</button></a><p>



</body>

<%}
catch(Exception e)
{%>
	<a href="Login.jsp">ddd</a>
	<% }%>
</html>