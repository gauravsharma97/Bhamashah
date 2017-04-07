<%@page import="javax.websocket.SendResult"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
</head>
<body>

	<jsp:useBean id="obj" class="LoginConsole.Update">
	<jsp:setProperty name="obj" property="*"/>
	</jsp:useBean>
	
	<%	
		if(obj.upd(session.getAttribute("hospitalid").toString()))
		{
			out.println("<script>alert('Updation Successful');window.location.href='updDisplay.html';</script>");
		}
		else{
			out.println("<script>alert('Updation Failed');window.location.href='HospitalEditInfo.jsp';</script>");
		}
	%>
	
</body>
</html>