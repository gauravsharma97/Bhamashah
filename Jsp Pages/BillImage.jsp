<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="DataBaseConnection.DataBaseCon"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 

	final String UPLOAD_DIRECTORY = "D:/Neon_Project/Bhamashah/WebContent/img/image_data/";
	  	
        //process only if its multipart content
        if(ServletFileUpload.isMultipartContent(request)){
       		
        	String name=null;
        	
            try 
            {
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
              
                for(FileItem item : multiparts)
                {
           
                    if(!item.isFormField())
                    {            
                    	name = new File(item.getName()).getName();
                        item.write( new File(UPLOAD_DIRECTORY + File.separator +session.getAttribute("hospitalid").toString()+session.getAttribute("billno").toString()+ name));
                        
                        Connection con = DataBaseCon.conn();
                		PreparedStatement ps;
                		String query="insert into patientbill values(?,?,?,?,?,'FALSE')";
                		String imgdata="insert into billimage values(?,?,?)";
                		 String storage_path ="img/image_data/"+session.getAttribute("hospitalid").toString()+session.getAttribute("billno").toString()+name;
                		
                			try {
                				
                				ps = con.prepareStatement(imgdata);
                				ps.setString(1,session.getAttribute("hospitalid").toString());
                				ps.setString(2,session.getAttribute("billno").toString());
                				ps.setString(3,storage_path);
                				
                				int i= ps.executeUpdate();
                				
                				ps = con.prepareStatement(query);
                				ps.setString(1,session.getAttribute("ackid").toString());
                				ps.setString(2,session.getAttribute("patientname").toString());
                				ps.setString(3,session.getAttribute("billno").toString());
                				ps.setString(4,session.getAttribute("hospitalid").toString());
                				ps.setInt(5,Integer.parseInt(session.getAttribute("amount").toString()));
                				
                				if((ps.executeUpdate()!=0) && i!=0)
                				{	
                					session.setAttribute("billimage","img/image_data/"+session.getAttribute("ackid").toString()+session.getAttribute("billno").toString());
                					out.println("<script>alert('Bill Added Succesfully !!!');window.location.href='BillDisplay.jsp';</script>");
                				}
                				else{
            						out.println("<script>alert('Bill Not Added !!!');window.location.href='Bill.jsp';</script>");
            					}
                			} catch (SQLException e) {
                				e.printStackTrace();
                			}
                   	
                    }
                }  
                
                
            } catch (Exception ex) 
            {
            	ex.printStackTrace();
            }          
         
        }
        
 %>
</body>
</html>