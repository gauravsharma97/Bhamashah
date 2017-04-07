package LoginConsole;
import java.sql.*;
import java.util.Vector;

import DataBaseConnection.DataBaseCon;

public class Patientlist {
	Vector<String> vc= new Vector<String>();
	Vector<String> vc1= new Vector<String>();
	String hospitalid;
	public Vector<String> fetchid(String hospitalid)
	{
		  Connection con = DataBaseCon.conn();
		  String Query="Select B_id from patientdetail where H_id=?";
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
	
	public Vector<String> fetchname(String hospitalid)
	{
		  Connection con = DataBaseCon.conn();
		  String Query="Select P_name from patientdetail where H_id=?";
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

}
