<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style>
body{
	background-color: lightblue;
}
</style>
</head>
<body>

		<div class="container-fluid">
	<div class=row>
		<div class="col-sm-12" style="text-align: center;padding: 50px">
		<h1><center style="font-family: cursive;font-size: 60px;color:white">Bill Image Upload...</center></h1>
			<form name=billimage action=BillImage.jsp method="post" enctype="multipart/form-data">
		<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
      <input id="filename" type="file" class="form-control" name="filename" required=true>
       </div>
   <br>
   <br>
   <button type="submit" class="btn btn-primary btn-lg btn-block">Upload Bill Image</button>
			</form>
			
		</div>
	</div>
</div>
	
</body>
</html>