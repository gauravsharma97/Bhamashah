package LoginConsole;
import java.sql.*;
import java.util.Vector;

import DataBaseConnection.DataBaseCon;

public class BillList {
	Vector<String> vc= new Vector<String>();
	Vector<String> vc1= new Vector<String>();
	Vector<String> vc2= new Vector<String>();
	Vector<String> vc3= new Vector<String>();
	String hospitalid;
	
	public Vector<String> fetchid(String hospitalid)
	{
		  Connection con = DataBaseCon.conn();
		  String Query="Select ack_id from patientbill where hospid=?";
		  PreparedStatement ps;
		  try 
		  {
			ps=con.prepareStatement(Query);
			ps.setString(1,hospitalid);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				vc.addElement(rs.getString(1));
			}
		  } 
		  
		  catch (SQLException e) 
		  {
			
			e.printStackTrace();
		  }
		 return vc; 
	}
	
	public Vector<String> fetchbill(String hospitalid)
	{
		  Connection con = DataBaseCon.conn();
		  String Query="Select billno from patientbill where hospid=?";
		  PreparedStatement ps;
		  try 
		  {
			ps=con.prepareStatement(Query);
			ps.setString(1,hospitalid);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				vc1.addElement(rs.getString(1));
			}
		  } 
		  
		  catch (SQLException e) 
		  {
			
			e.printStackTrace();
		  }
		 return vc1; 
	}

	
	public Vector<String> fetchamt(String hospitalid)
	{
		  Connection con = DataBaseCon.conn();
		  String Query="Select amount from patientbill where hospid=?";
		  PreparedStatement ps;
		  try 
		  {
			ps=con.prepareStatement(Query);
			ps.setString(1,hospitalid);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				vc2.addElement(rs.getString(1));
			}
		  } 
		  
		  catch (SQLException e) 
		  {
			
			e.printStackTrace();
		  }
		 return vc2; 
	}
	
	public Vector<String> fetchflag(String hospitalid)
	{
		  Connection con = DataBaseCon.conn();
		  String Query="Select flag from patientbill where hospid=?";
		  PreparedStatement ps;
		  try 
		  {
			ps=con.prepareStatement(Query);
			ps.setString(1,hospitalid);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				vc3.addElement(rs.getString(1));
			}
		  } 
		  
		  catch (SQLException e) 
		  {
			
			e.printStackTrace();
		  }
		 return vc3; 
	}


	
}
