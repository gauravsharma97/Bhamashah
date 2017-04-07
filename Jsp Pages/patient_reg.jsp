<!DOCTYPE html>

<html>
<head>
  <title>Bhamashah-Portal</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="//rawgithub.com/stidges/jquery-searchable/master/dist/jquery.searchable-1.0.0.min.js"></script>
  <link rel="title_icon" href="download.ico" />
  
  <style>
  body {
      position: relative; 
     background-color:lightblue;
  }
 
  
  .row-padding {
    margin-top: 25px;
    margin-bottom: 25px;
}
  </style>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50" >
<div id="Entry" class="container-fluid">
  
  <div class="row" style="padding:150px 10px 10px 10px">

  <h1><center>Registration</center></h1>
 <form name=registry action=patient_reg_check.jsp method="post">
  <div class="input-group" >
      <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
      <input id="pehchanid" type="text" class="form-control" name="pehchanid" placeholder="Pehchan Id" required=true>
    </div>
    <br>
	<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-tag"></i></span>
      <input id="patientname" type="text" class="form-control" name="patientname" placeholder="Patient Name" required=true>
    </div>
    <br>
	<button type="submit" class="btn btn-primary btn-lg btn-block">Register</button>
  </form>
  
</body>
</html>