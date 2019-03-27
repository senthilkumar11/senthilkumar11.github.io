
<%@page import="java.sql.*"%>
<%@page import="practice.*"%>
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
int flag=0;
Connection con=connectdb.getConnection();
PreparedStatement ps=con.prepareStatement("select * from user");
ResultSet rs=ps.executeQuery();
String name=request.getParameter("name");
String pw=request.getParameter("pw");
while (rs.next())
{
	int id=rs.getInt(1);
	String user=rs.getString(2);
	String email=rs.getString(3);
	String userpw=rs.getString(4);
	
	if(user.equals(name)&&userpw.equals(pw))
	{
		flag=1;
		session.setAttribute("name", name);
		session.setAttribute("pass", pw);
		session.setAttribute("id",id);
		session.setAttribute("email", email);
		session.setMaxInactiveInterval(600);
		 if(session.getAttribute("name").toString().equals("senthil")||session.getAttribute("name").toString().equals("admin"))
		response.sendRedirect("framerow.jsp");
		 else
			 response.sendRedirect("userframe.jsp");
		break;
	}
}
if(flag==0)
{
	out.println("Login Failed");
	
}
%>
</body>
</html>