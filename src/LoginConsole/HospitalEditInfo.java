package LoginConsole;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DataBaseConnection.DataBaseCon;

public class HospitalEditInfo {
	
	public static String  hospitalid;
	String hospitalname;
	String email;
	String password;
	String address;
	String contact;
	String website;
	
	public static String name()
	{
		String temp=null;
		Connection con = DataBaseCon.conn();
		String query="select Hospital_Name from hospital where Hospital_Id=?";
		PreparedStatement ps;
		try 
		{
			ps=con.prepareStatement(query);
			ps.setString(1, hospitalid);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				temp=rs.getString(1);
			}
			
		} 
		catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return temp;
	}
	
	public static String email()
	{
		String temp=null;
		Connection con = DataBaseCon.conn();
		String query="select Email from hospital where Hospital_Id=?";
		PreparedStatement ps;
		try 
		{
			ps=con.prepareStatement(query);
			ps.setString(1, hospitalid);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				temp=rs.getString(1);
			}
			
		} 
		catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return temp;
	}
	
	public static String pass()
	{
		String temp=null;
		Connection con = DataBaseCon.conn();
		String query="select Password from hospital where Hospital_Id=?";
		PreparedStatement ps;
		try 
		{
			ps=con.prepareStatement(query);
			ps.setString(1, hospitalid);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				temp=rs.getString(1);
			}
			
		} 
		catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return temp;
	}
	
	public static String add()
	{
		String temp=null;
		Connection con = DataBaseCon.conn();
		String query="select Address from hospital where Hospital_Id=?";
		PreparedStatement ps;
		try 
		{
			ps=con.prepareStatement(query);
			ps.setString(1, hospitalid);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				temp=rs.getString(1);
			}
			
		} 
		catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return temp;
	}
	
	public static String cont()
	{   
		String temp=null;
		Connection con = DataBaseCon.conn();
		String query="select Contact from hospital where Hospital_Id=?";
		PreparedStatement ps;
		try 
		{
			ps=con.prepareStatement(query);
			ps.setString(1, hospitalid);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				temp=rs.getString(1);
			}
			
		} 
		catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return temp;
	}
	
	public static String web()
	{
		String temp=null;
		Connection con = DataBaseCon.conn();
		String query="select Website from hospital where Hospital_Id=?";
		PreparedStatement ps;
		try 
		{
			ps=con.prepareStatement(query);
			ps.setString(1, hospitalid);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				temp=rs.getString(1);
			}
			
		} 
		catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return temp;
	}

}
