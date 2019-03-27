<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="text-align: center;font-size: xx-large;font-style: italic; color: gray;">
<form action="in.jsp" method="get">
Enter Name<br><input type="text" name="name" required><br>
Enter Brand<br><input type="text" name="brand" required><br>
Enter Category<br><input type="text" name="ct" required><br>
Enter Price<br><input type="text" name="price" required><br>
Enter description<br><input type="text" name="des" ><br>
<input type="submit" value="Submit" style="font-size: large;font-style: oblique;color: maroon;">
</form>
<h4 style="float:right;padding-right: 100px"><a href="product.jsp"><button style="padding:12px 40px;font-size:25px;border-radius: 15px">Home page</button></a></h4>
</body>
</html>