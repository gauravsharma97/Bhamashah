<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="login" class="Reg_Login.Login">
<jsp:setProperty name="login" property="*" />
</jsp:useBean>
<%
if(login.checkadmin())
{  
	response.sendRedirect("AdminConsole.jsp");
}
else{
	if(login.log()) {
	session.setAttribute("hospitalid",login.getLoginid());
    response.sendRedirect("LoginConsole.jsp");
}else{
	%>
		<jsp:forward page="index.jsp">
		<jsp:param value="* UserName or Password is incorrect" name="err"/>
		</jsp:forward>
	<%
}
}
	
%>
		
</body>
</html>