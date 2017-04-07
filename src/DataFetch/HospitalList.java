package DataFetch;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import DataBaseConnection.DataBaseCon;

public class HospitalList {
	
  public Vector<String>  Name = new Vector<String>();
	public Vector<String>  Add = new Vector<String>();
 public	Vector<String>  Site = new Vector<String>();
	
	
	public void search()
	{
		String Query = "SELECT Hospital_Name,Address,WebSite FROM hospital";
		Connection con = DataBaseCon.conn();
		PreparedStatement  ps;
		try 
		{  
			ps = con.prepareStatement(Query);
			ResultSet rs= ps.executeQuery();
			while(rs.next())
			{
				Name.addElement(rs.getString(1));
				Add.addElement(rs.getString(2));
				Site.addElement(rs.getString(3));
			}
		} 
		catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}
	
	public Vector<String> hospName(){
		return Name;	
	}
	
	public Vector<String> hospAdd(){
		return Add;
	}
	
	public Vector<String> hospSite(){
		return Site;
	}

}
