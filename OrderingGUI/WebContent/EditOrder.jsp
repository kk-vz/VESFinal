<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <script src="js/jquery-1.9.1.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/app.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form id="editRequest" action="EditOrderServlet">
Contract ID:<input type="text" name="contractid" id="contractid" />
<input type="button" id="editbutton" name="editbutton" value="Search"/>
    <div id="displaySection">
        <fieldset>
           
                 <div id="editResponse"></div>
        </fieldset>
    </div> 
    </form>
</body>
</html> 