<%@page import="sun.font.SunFontManager.FamilyDescription"%>
<%@page import="DataFetch.HospitalName"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="-1" />
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style type="text/css">
  	#wrapper {
  padding-left: 250px;
  transition: all 0.4s ease 0s;
}

#sidebar-wrapper {
  margin-left: -250px;
  left: 250px;
  width: 250px;
  background: #000;
  position: fixed;
  height: 100%;
  overflow-y: auto;
  z-index: 1000;
  transition: all 0.4s ease 0s;
}

#wrapper.active {
  padding-left: 0;
}

#wrapper.active #sidebar-wrapper {
  left: 0;
}

#page-content-wrapper {
  width: 100%;
}



.sidebar-nav {
  position: absolute;
  top: 0;
  width: 250px;
  list-style: none;
  margin: 0;
  padding: 0;
}

.sidebar-nav li {
  line-height: 40px;
  text-indent: 20px;
}

.sidebar-nav li a {
  color: #999999;
  display: block;
  text-decoration: none;
  padding-left: 60px;
}

.sidebar-nav li a span:before {
  position: absolute;
  left: 0;
  color: #41484c;
  text-align: center;
  width: 20px;
  line-height: 18px;
}

.sidebar-nav li a:hover,
.sidebar-nav li.active {
  color: #fff;
  background: rgba(255,255,255,0.2);
  text-decoration: none;
}

.sidebar-nav li a:active,
.sidebar-nav li a:focus {
  text-decoration: none;
}

.sidebar-nav > .sidebar-brand {
  height: 65px;
  line-height: 60px;
  font-size: 18px;
}

.sidebar-nav > .sidebar-brand a {
  color: #999999;
}

.sidebar-nav > .sidebar-brand a:hover {
  color: #fff;
  background: none;
}



.content-header {
  height: 65px;
  line-height: 65px;
}

.content-header h1 {
  margin: 0;
  margin-left: 20px;
  line-height: 65px;
  display: inline-block;
}

#menu-toggle {
    text-decoration: none;
}

.btn-menu {
  color: #000;
} 

.inset {
  padding: 20px;
}

@media (max-width:767px) {

#wrapper {
  padding-left: 0;
}

#sidebar-wrapper {
  left: 0;
}

#wrapper.active {
  position: relative;
  left: 250px;
}

#wrapper.active #sidebar-wrapper {
  left: 250px;
  width: 250px;
  transition: all 0.4s ease 0s;
}

#menu-toggle {
  display: inline-block;
}

.inset {
  padding: 15px;
}

}
  	
  </style>
<title>Welcome</title>
</head>
<body>

<div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <nav id="spy">
                <ul class="sidebar-nav nav">
                    <li class="sidebar-brand">
                        <a href="LoginConsole.jsp"><span class="fa fa-home solo">Home</span></a>
                    </li>
                    <li>
                        <a href="Patientlist.jsp" target="display" >
                            <span class="fa fa-anchor solo">Patient List</span>
                        </a>
                    </li>
                    <li>
                        <a href="patient_reg.jsp" target="display" >
                            <span class="fa fa-anchor solo">Patient Registration</span>
                        </a>
                    </li>
                    <li>
                        <a href="Bill.jsp" target="display">
                            <span class="fa fa-anchor solo">Billing</span>
                        </a>
                    </li>
                    <li>
                        <a href="BillSaw.jsp" target="display" >
                            <span class="fa fa-anchor solo">All Bills</span>
                        </a>
                    </li>
                    <li>
                        <a href="HospitalEditInfo.jsp" target="display" >
                            <span class="fa fa-anchor solo">HospitalInfoUpdate</span>
                        </a>
                    </li>
                    <li>
                        <a href="kill.jsp">
                            <span class="fa fa-anchor solo">Logout</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>

        <!-- Page content -->
        <div id="page-content-wrapper">
            <div class="content-header">
                <h1 id="home">
                    <img src="user2-160x160.jpg"/>
                   	<%
                   		out.print("<strong><u>"+HospitalName.hospitalName(session.getAttribute("hospitalid").toString())+"</u>");
                   	%>
                </h1>
            </div>

            <div class="page-content inset" data-spy="scroll" data-target="#spy">
                <div class="row">
                    <div class="col-md-12 well" style="margin: 0">
                       <iframe src="welcome.jsp" name="display" style="border:0;width: 100%;height: 550px;padding: 0px"></iframe>
                    </div>
                </div>


            </div>

        </div>

    </div>
<script type="text/javascript">

/*Menu-toggle*/
$("#menu-toggle").click(function(e) {
    e.preventDefault();
    $("#wrapper").toggleClass("active");
});



/*Smooth link animation*/
$('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\/\/, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {

        var target = $(this.hash);
        target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
        if (target.length) {
            $('html,body').animate({
                scrollTop: target.offset().top
            }, 1000);
            return false;
        }
    }
});
</script>
</body>
</html>