<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="DataFetch.checksum" %>
    <%@ page import="LoginConsole.sec" %>
    <%@ page import="java.util.Random"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!

public int generateRandomNumber(int start,int end)
{
    Random random = new Random();
    long fraction = (long) ((end - start + 1 ) * random.nextDouble());
    return ((int)(fraction + start));
}
%>
<% 

int i=generateRandomNumber(100000,88888888);
String prn=i+"";

String am=request.getParameter("amt");
String bill1=request.getParameter("billid");
String hospid=request.getParameter("hospid");

sec.Bill=bill1;
sec.hospid=hospid;


int amt1=Integer.parseInt(am);
String CHECKSUM_KEY = "#2&[W<nJ*K\"xO_z";
String amtt;
if(amt1>=1000)
amtt="1000";
else
amtt=am;
String checks="HACKATHON2017|"+prn+"|"+amtt+"|"+CHECKSUM_KEY;
String Checksum= new checksum().checksum1(checks);

// String checks="HACKATHON2017|"+prn+"|"+amt+"|"+CHECKSUM_KEY;
%>
<form action="http://emitrauat.rajasthan.gov.in/payments/v1/init" method="POST">
<input type="hidden" name="MERCHANTCODE" value="HACKATHON2017" />
<input type="hidden" name="PRN" value="<%= prn %>" />
<input type="hidden" name="REQTIMESTAMP" value="20160623132359958" />
<input type="hidden" name="PURPOSE" value="bhamashahreturn" />
<input type="hidden" name="AMOUNT" value="<%= amtt %>" />
<input type="hidden" name="SUCCESSURL" value="http://localhost:8080/Bhamashah/payment_sucess.jsp" />
<input type="hidden" name="FAILUREURL" value="http://localhost:8080/Bhamashah/payment_fail.jsp" />
<input type="hidden" name="CANCELURL" value="http://localhost:8080/Bhamashah/payment_cancel.jsp" />
<input type="hidden" name="USERNAME" value="admin" />
<input type="hidden" name="USERMOBILE" value="9876543210" />
<input type="hidden" name="USEREMAIL" value="admin@admin.com" />
<input type="hidden" name="UDF1" value="<UDF1>" />
<input type="hidden" name="UDF2" value="<UDF2>" />
<input type="hidden" name="UDF3" value="<UDF3>" />
<input type="hidden" name="CHECKSUM" value="<%= Checksum%>" />
<button type="submit">Submit</button>
</form>
</body>
</html>