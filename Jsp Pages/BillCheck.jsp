<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		
		<jsp:useBean id="obj" class="LoginConsole.BillCheck">
		<jsp:setProperty name="obj" property="*" />
		</jsp:useBean>
		
		<%
				if(obj.registry())
				{	
						session.setAttribute("ackid",obj.getAck_id());
						session.setAttribute("patientname",obj.getPatientname());
						session.setAttribute("billno",obj.getBillno());
						session.setAttribute("amount",obj.getAmount());
						
						System.out.println(session.getAttribute("ackid"));
						System.out.println(session.getAttribute("hospitalid"));
						
						response.sendRedirect("BillImageUpload.jsp");

				}else {
					out.println("<script>alert('Patient Not Registered...');window.location.href='patient_reg.jsp';</script>");
				}
		%>
		
</body>
</html>