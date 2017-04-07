package Reg_Login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DataBaseConnection.DataBaseCon;

public class Login {
	
	String loginid,password;

	
	public String getLoginid() {
		return loginid;
	}

	public void setLoginid(String loginid) {
		this.loginid = loginid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean checkadmin()
	{
		if(loginid.equals("admin")&&password.equals("admin"))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
	public boolean log()
	{
		Connection con = DataBaseCon.conn();
		PreparedStatement ps;
		String query="select Password from hospital where Hospital_Id=?";
		
		try {
			ps = con.prepareStatement(query);
			ps.setString(1,loginid);
			ResultSet res = ps.executeQuery();
			if(res.next()){
			if(res.getString(1).equals(password))
				return true;
			}
			else return false;
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return false;
	}

}
