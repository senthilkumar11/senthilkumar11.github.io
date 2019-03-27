<!DOCTYPE frameset PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
  
</head>


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
	  <frame src="product.jsp">
	  </frameset>
	  </frameset>
	
</html>
