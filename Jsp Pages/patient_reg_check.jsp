<%@page import="javax.websocket.Session"%>
<%@page import="LoginConsole.patient_reg"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="reg" class="LoginConsole.patient_reg">
<jsp:setProperty name="reg" property="*" />
</jsp:useBean>
<%
patient_reg.sethid(session.getAttribute("hospitalid").toString());
if(patient_reg.getHTML()==true)
{
out.print("<script>alert('Patient has been Registered');window.location.href='patient_reg.jsp';</script>");
}
else
{
out.print("<script>alert('Patient Cannot Be Registered  due to"+patient_reg.getstatus()+"' );window.location.href='patient_reg.jsp';</script>");
}
	
%>
		
</body>
</html>