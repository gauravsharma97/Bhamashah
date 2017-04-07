<!DOCTYPE html>
<%@page import="java.util.Vector"%>
<%@page import="DataFetch.HospitalList"%>
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
  body 
  {
      position: relative; 
  }
  #Hospital {padding-top:50px;height:500px;color: #fff; background-image: url("images.jpg");}
  #Entry {padding-top:50px;height:500px;color: #fff; background-color: #673ab7;}
  #CitizenCare {padding-top:50px;height:800px;color: #fff; background-color: #FF8C00;}
  .sh:hover {color:yellow;}
  .sh {color:red;font-size:30px}
  
  .row-padding {
    margin-top: 25px;
    margin-bottom: 25px;
}
  </style>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Bhamashah-Portal</a>
    </div>
    <div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
          <li><a href="#Hospital">Hospital</a></li>
          <li><a href="#Entry">Reg/Login</a></li>
          <li><a href="#CitizenCare">CitizenCare</a></li>
        </ul>
      </div>
    </div>
  </div>
</nav>    

<div id="Hospital" class="container-fluid">


<div data-spy="scroll" data-target="#navbar-example" data-offset="0" 
	style="height:90%;overflow:auto; position: relative;text-align:center;overflow-x:hidden ">
	  <div class="row">
	        <div class="col-lg-6 col-lg-offset-3">
	            <input type="search" id="container-search" value="" class="form-control" placeholder="Search...">
	        </div>
	    </div>
	    <div class="row row-padding" style="text-align:center">
	        <div class="col-xs-4" style="font-size:30px"><strong>HospitalName</strong></div>
	        <div class="col-xs-4" style="font-size:30px"><strong>Address</strong></div>
	        <div class="col-xs-4" style="font-size:30px"><strong>Website</strong></div>
	    </div>
	<div class="container-fluid" id="searchable-container">
	<%
	
		HospitalList hl = new HospitalList();
		hl.search();
		Vector<String> v1,v2,v3;
		v1= hl.hospName();
		v2=hl.hospAdd();
		v3=hl.hospSite();
		for(int i=0;i<v1.size();i++)
		{
			out.print( "<div class='row row-padding' text-align=center style='text-align:center'>");
			out.print("<div class='col-xs-4' style='font-size:20px'>"+v1.elementAt(i)+"</div>");
			out.print("<div class='col-xs-4' style='font-size:20px'>"+v2.elementAt(i)+"</div>");
			out.print("<div class='col-xs-4' style='font-size:20px'><a href =http://"+v3.elementAt(i)+" style='color:white'>"+v3.elementAt(i)+"</a></div></div>");			
		}
	%>
	</div>
</div>


</div>


<div id="Entry" class="container-fluid">
  
  <div class="row">
  <div class="col-sm-6">
  <h1>Registration</h1>
  
  <form name=reg action=Reg.jsp method="post" onsubmit="return validateForm()">
  <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-tag"></i></span>
      <input id="hospitalId" type="text" class="form-control" name="hospitalid" placeholder="Hospital Id" required=true>
    </div>
	<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
      <input id="hospitalName" type="text" class="form-control" name="hospitalname" placeholder="Hospital Name" required=true>
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
      <input id="email" type="text" class="form-control" name="email" placeholder="Email" required=true>
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="password" type="password" class="form-control" name="password" placeholder="Password" required=true>
	  <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="cpassword" type="password" class="form-control" name="confirmpassword"  placeholder="ConfirmPassword" required=true>
    </div>
	<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
      <input id="address" type="text" class="form-control" name="address" placeholder="Address" required=true>
    </div>
	<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
      <input id="contact" type="number" min=1000000000 max=9999999999 class="form-control" name="contact" placeholder="Mobile No." required=true>
    </div>
    <br>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-link"></i></span>
      <input id="website" type="text" class="form-control" name="website" placeholder="Website">
    </div>
	<br>
	<p id="passmsg"></p>
	<button type="submit" class="btn btn-primary btn-lg btn-block">Register</button>
  </form>
  
  </div>
  
  <div class="col-sm-1">
  </div>
  
  <div class="col-sm-5" style="float:center">
	<h1>Login</h1>
	<form name ="log" action="Login.jsp" method="post">
	<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-tag"></i></span>
      <input id="loginId" type="text" class="form-control" name="loginid" placeholder="Hospital Id" required=true>
    </div>
	<br>
	<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="password" type="password" class="form-control" name="password" placeholder="Password" required=true>
	  </div>
	  <br>
	  <span><%
	  	if(request.getParameter("err")!=null)
	  		out.print(request.getParameter("err")+"<br>");
	  %>
	  </span>
	  <br>
	  <Button type="submit" class="btn btn-primary btn-lg btn-block" value="Submit" >Login</button>
	  </form>
  </div>
  
	</div>
</div>


<div id="CitizenCare" class="container-fluid">

<h2 style="color:white">Citizen Care</h2>
<br><br><br>

<div class="row ">
 
    <div class="col-sm-2 col-xs-4">
    	<div id="tile1" class="tile">
        <a href="http://164.100.222.168:8080/bhamashahqc/citizenRegistration" class="list-group-item" style="border:0">
         <div class="carousel slide" data-ride="carousel">
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
               <img src="dist/img/sl/reg0.png" class="img-responsive"/>
            </div>
            <div class="item">
               <img src="dist/img/sl/reg1.png" class="img-responsive"/>
            </div>
          </div>
        </div>
        </a>
         
    	</div>
	</div>
	
	<div class="col-sm-3 col-xs-4">
		<div id="tile2" class="tile">
    	 <a href="http://164.100.222.168:8080/bhamashahqc/citizenEnrollment" class="list-group-item" style="border:0">
         <div class="carousel slide" data-ride="carousel">
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
              <img src="dist/img/sl/enr0.png" class="img-responsive"/>
            </div>
            <div class="item">
              <img src="dist/img/sl/enr1.png" class="img-responsive"/>
            </div>
            <div class="item">
              <img src="dist/img/sl/enr00.png" class="img-responsive"/>
            </div>
          </div>
        </div>
        </a>
         
		</div>
	</div>
	<div class="col-sm-3 col-xs-4">
		<div id="tile3" class="tile">
    	  <a href="http://164.100.222.168:8080/bhamashahqc/onlineEdit" class="list-group-item" style="border:0">
        <div class="carousel slide" data-ride="carousel">
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
               <img src="dist/img/sl/add0.png" class="img-responsive"/>
            </div>
            <div class="item">
               <img src="dist/img/sl/add1.png" class="img-responsive"/>
            </div>
            <div class="item">
               <img src="dist/img/sl/add2.png" class="img-responsive"/>
            </div>
            </div>
         </div>
         </a>
		</div>
	</div>
	<div class="col-sm-2 col-xs-4">
		<div id="tile4" class="tile">
   <a href="http://164.100.222.168:8080/bhamashahqc/citizenForgotRegistration" class="list-group-item" style="border:0"> 
        <div class="carousel slide" data-ride="carousel">
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
              <img src="dist/img/sl/for0.png" class="img-responsive"/>
            </div>
            <div class="item">
              <img src="dist/img/sl/for1.png" class="img-responsive"/>
            </div>
          </div>
        </div>
         </a>	
		</div>
	</div>
    <div class="col-sm-2 col-xs-4">
		<div id="tile5" class="tile">
    	 <a href="http://164.100.222.168:8080/bhamashahqc/citizenAuthenticationForm" class="list-group-item" style="border:0">
         <div class="carousel slide" data-ride="carousel">
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
              <img src="dist/img/sl/addu1.png" class="img-responsive"/>
            </div>
            <div class="item">
              <img src="dist/img/sl/addu0.png" class="img-responsive"/>
            </div>
          </div>
        </div>
        </a>
         
		</div>
	</div>
	</div>
	<br><br><br><br><br>
	<div class="row">
	<div class="col-sm-3 col-xs-8">
		<div id="tile7" class="tile">
		<a href="http://164.100.222.168:8080/bhamashahqc/pdfEnroll" class="list-group-item" style="border:0">
    	 
        <div class="carousel slide" data-ride="carousel">
          <!-- Wrapper for slides -->
          
          <div class="carousel-inner">
            <div class="item active">
              <img src="dist/img/sl/pdf1.png" class="img-responsive"/>
            </div>
            <div class="item">
              <img src="dist/img/sl/pdf2.png" class="img-responsive"/>
            </div>
            <div class="item">
              <img src="dist/img/sl/pdf3.png" class="img-responsive"/>
            </div>
          </div>
         
        </div>
         </a>
		</div>
	</div>
	<div class="col-sm-2 col-xs-4">
		<div id="tile8" class="tile">
    	 <a href="http://164.100.222.168:8080/bhamashahqc/citizenDocUpload" class="list-group-item" style="border:0">
         <div class="carousel slide" data-ride="carousel">
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
               <img src="dist/img/sl/up0.png" class="img-responsive"/>
            </div>
            <div class="item">
               <img src="dist/img/sl/up1.png" class="img-responsive"/>
            </div>
            </div>
         </div>
         </a>
         
		</div>
	</div>
	<div class="col-sm-2 col-xs-4">
		<div id="tile9" class="tile">
		<a href="http://164.100.222.168:8080/bhamashahqc/getCardStatus" class="list-group-item" style="border:0">
    	 
          <div class="carousel slide" data-ride="carousel">
          <!-- Wrapper for slides -->
          
          <div class="carousel-inner">
            <div class="item active">
              <img src="dist/img/sl/card0.png" class="img-responsive"/>
            </div>
            <div class="item">
              <img src="dist/img/sl/card1.png" class="img-responsive"/>
            </div>
          </div>
        </div>
        </a>
         
		</div>
	</div>
	<div class="col-sm-2 col-xs-4">
		<div id="tile9" class="tile">
    	 <a href="http://164.100.222.168:8080/bhamashahqc/citizenDocUpload" class="list-group-item" style="border:0">
          <div class="carousel slide" data-ride="carousel">
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
              <img src="dist/img/sl/upload0.png" class="img-responsive"/>
            </div>
            <div class="item">
              <img src="dist/img/sl/upload1.png" class="img-responsive"/>
            </div>
          </div>
        </div>
        </a>
         
		</div>
	</div>
	<div class="col-sm-2 col-xs-4">
		<div id="tile9" class="tile">
    	 
          <div class="carousel slide" data-ride="carousel">
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
              <img src="dist/img/sl/doc.png" class="img-responsive"/>
            </div>
            <div class="item">
              <img src="dist/img/sl/doc1.png" class="img-responsive"/>
            </div>
          </div>
        </div>
         
		</div>
	</div>
  
</div>


</div>
<script src=".\bootstrap\js\self.js"></script>
<script>
$(function () {
    $( '#table' ).searchable({
        striped: true,
        oddRow: { 'background-color': '#f5f5f5' },
        evenRow: { 'background-color': '#fff' },
        searchType: 'fuzzy'
    });
    
    $( '#searchable-container' ).searchable({
        searchField: '#container-search',
        selector: '.row',
        childSelector: '.col-xs-4',
        show: function( elem ) {
            elem.slideDown(100);
        },
        hide: function( elem ) {
            elem.slideUp( 100 );
        }
    })
});
</script>
</body>
</html>
