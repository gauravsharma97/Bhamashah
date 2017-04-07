<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="background-color:lightblue">
<div class="container-fluid">
	<div class=row>
		<div class="col-sm-12" style="text-align: center;padding: 50px">
		<h1><center style="font-family: cursive;font-size: 60px;color:white">BILLING...</center></h1>
			<form name=bill method="post" action=BillCheck.jsp>
		<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-tag"></i></span>
      <input id="ack_id" type="text" class="form-control" name="ack_id" placeholder="Acknowlagement ID" required=true>
       </div>
       <br>
	<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
      <input id="patientname" type="text" class="form-control" name="patientname" placeholder="Patient Name" required=true>
    </div>
    <br>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
      <input id="billno" type="text" class="form-control" name="billno" placeholder="Bill No" required=true>
    </div>
    <br>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
      <input id="amount" type="number" class="form-control" name="amount" placeholder="Amount" required=true>
    </div>
   <br>
  	
   <button type="submit" class="btn btn-primary btn-lg btn-block">Register Bill</button>
			</form>
		</div>
	</div>
</div>
</body>
</html>