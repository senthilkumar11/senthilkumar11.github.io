<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="text-align: center;font-size: xx-large;font-style: italic; color: gray;">
<%try
{
	%>
	<img alt="admin" src="admin.png">
<p>id=<%out.println(session.getAttribute("id").toString()); %></p>
<p>name=<%out.println(session.getAttribute("name").toString()); %></p>
<p>email=<%out.println(session.getAttribute("email").toString()); %></p>
<%}
catch(Exception e)
{%>


<% }%>

</body>
</html>