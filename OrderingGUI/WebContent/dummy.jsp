<%@page import="com.verizon.ves.ui.CustomerDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form action="NewOrderServlet" method="post">
<input type="radio" name="sex" value="male">Male<br>
<input type="radio" name="sex" value="female">Female
<input type="submit" value ="submit" />
</form>

<p><b>Note:</b> When a user clicks on a radio-button, it becomes checked, and all other radio-buttons with equal name become unchecked.</p>

</body>
</html>

