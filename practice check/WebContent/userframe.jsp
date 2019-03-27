<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<frameset rows="22%,75%">
<%
    session=request.getSession(false);
    if(session.getAttribute("name")==null)
    {
        response.sendRedirect("Login.jsp");
    }

%>
	  <frame src="grizzlyshop.jsp" noresize="noresize" scrolling="no">
	  <frameset cols="30%,70%">
	  <frame src="admin.jsp" noresize="noresize" >
	  <frame src="dis.jsp">
	  </frameset>
	  </frameset>
	
</html>

</html>