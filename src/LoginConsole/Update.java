package LoginConsole;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import DataBaseConnection.DataBaseCon;

public class Update {
	
	String email,password,website,contact,address;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	public boolean upd(String hospitalid)
	{
		Connection con = DataBaseCon.conn();
		PreparedStatement ps;
		String query="update hospital set Email=?,Password=?,Address=?,Contact=?,WebSite=? where Hospital_id=?";
		
		try {
			ps = con.prepareStatement(query);
			
			ps.setString(1,email);
			ps.setString(2,password);
			ps.setString(3,address);
			ps.setString(4,contact);
			ps.setString(5,website);
			ps.setString(6,hospitalid);
			
			int i= ps.executeUpdate();
		if(i!=0)
		{
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
