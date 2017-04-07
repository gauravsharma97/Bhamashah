
function validateForm() {

	var x = document.getElementById("password").value;
	var y = document.getElementById("cpassword").value;

    if (x==y) {
       
       return true;
    }
	else
	{ alert("passwords do not match");
	return false;}
	return true;
}

document.getElementById("password").onfocus = function() {
	    document.getElementById("passmsg").innerHTML="";
};

document.getElementById("password").onblur = function() {
	   var p = document.getElementById("password").value;
	   var cp = document.getElementById("cpassword").value;
	   if(p==cp )
	    {}
		else{
			document.getElementById("passmsg").innerHTML="* Password do not match";
		}
};

document.getElementById("cpassword").onfocus = function() {
	    document.getElementById("passmsg").innerHTML="";
};

document.getElementById("cpassword").onblur = function() {
	   var p = document.getElementById("password").value;
	   var cp = document.getElementById("cpassword").value;
	   if(p==cp )
	    {}
		else{
			document.getElementById("passmsg").innerHTML="* Password do not match";
		}
};