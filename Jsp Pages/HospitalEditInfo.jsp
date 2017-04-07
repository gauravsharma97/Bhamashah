<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="LoginConsole.HospitalEditInfo" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="title_icon" href="download.ico" />
  
  <style>
  
   body {background-color:#673ab7;}
   b{color:white}
   p{color:white}
   
  </style>
</head>
<body >
<div class="container-fluid">
  <div class="row">
  <div class="col-sm-12" style="text-align: center;padding: 10px">
  <h1><center style="font-family: cursive;font-size: 60px;color:white"><u>Update Hospital Info...</u></center></h1>
  <br><br>
  <form name=upd action=Update.jsp method="post" onsubmit="return validateForm()">
  <% HospitalEditInfo.hospitalid=session.getAttribute("hospitalid").toString(); %>
   <div class="input-group">
    <p> Hospital Id :<b><%=session.getAttribute("hospitalid")%> </b>
    </div>
	<div class="input-group">
                   <p> Hospital Id :<b> <%=HospitalEditInfo.name() %> </b>
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
      <input id="email" type="text" class="form-control" name="email" value="<% out.println(HospitalEditInfo.email());%>" required=true>
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="password" type="password" class="form-control" value=<%= HospitalEditInfo.pass() %> name="password" required=true>
	  <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="cpassword" type="password" class="form-control" value=<%= HospitalEditInfo.pass() %> name="confirmpassword" required=true>
    </div>
	<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
      <input id="address" type="text" class="form-control" name="address" value="<%=HospitalEditInfo.add() %>" required=true>
    </div>
	<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
      <input id="contact" type="number" min=1000000000 max=9999999999 class="form-control" name="contact" value="<%=HospitalEditInfo.cont() %>" required=true>
    </div>
    <br>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-link"></i></span>
      <input id="website" type="text" class="form-control" name="website" value="<%=HospitalEditInfo.web() %>"  required=true>
    </div>
	<br>
	<p id="passmsg"></p>
	<button type="submit" class="btn btn-primary btn-lg btn-block">Update</button>
  </form>
  <br>
    <a href=welcome.jsp><button type="button" class="btn btn-primary btn-lg btn-block">Cancel</button></a>
  </div>
  
<script src=".\bootstrap\js\self.js"></script>

</body>
</html>