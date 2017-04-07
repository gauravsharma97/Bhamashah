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
  body {
      position: relative; 
  }
  #Hospital {padding-top:50px;height:662px;color: #fff; background-color:lightblue;}
  .sh:hover {color:yellow;}
  .sh {color:red;font-size:30px}
  
  .row-padding {
    margin-top: 25px;
    margin-bottom: 25px;
}
  </style>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">

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
