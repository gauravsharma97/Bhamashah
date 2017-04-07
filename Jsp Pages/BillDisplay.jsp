<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
	body{
		background-color: lightblue;
		padding: 10px
	}
</style>
</head>
<body >
<div class="container-fluid">
<div class=row>
<div class="col-sm-12">
	<center><h1 style="font-family: cursive;">Bill Details..</h1></center>
</div>
</div>
<br><br>
	<div class="row">
		
		<div class="col-sm-4" style="background-color:lightblue;height:300px;text-align: center;">
			<a href="Bill.jsp"><button class="btn btn-primary btn-lg btn-block">Add More Bill</button></a><br>
			<a href="welcome.jsp"><button class="btn btn-primary btn-lg btn-block">HOME</button></a>
		</div>
		
		<div class="col-sm-8" style="background-color:lightblue;height:300px;text-align: center;">
			<img src="<%=session.getAttribute("billimage")%>" width=100% height=280px />
		</div>
	</div>
	<div class="row">
		<div class="col-sm-6" style="text-align: center;font-family: cursive;color: white;">
				<h4>Bill No :-  <%=session.getAttribute("billno") %></h4><br>
		</div>
		<div class="col-sm-6" style="text-align: center;font-family: cursive;color: white;">
				<h4>Acknowlage No :-  <%=session.getAttribute("ackid") %></h4><br>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-6" style="text-align: center;font-family: cursive;color: white;">
				<h4>Patient Name :-  <%=session.getAttribute("patientname") %></h4><br>
		</div>
		<div class="col-sm-6" style="text-align: center;font-family: cursive;color: white;">
				<h4>Hospital Id :-  <%=session.getAttribute("hospitalid") %></h4><br>
		</div>
	</div>
	<div class="row" >
		<div class="col-sm-12" style="text-align: center;font-family: cursive;color: white;">
				<h4>Amount :-  <%=session.getAttribute("amount") %></h4>
		</div>
	</div>
</div>

<%
session.removeAttribute("ackid");
session.removeAttribute("patientname");
session.removeAttribute("billno");
session.removeAttribute("amount");
session.removeAttribute("billimage");
%>

</body>
</html>