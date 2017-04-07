package Reg_Login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import DataBaseConnection.DataBaseCon;

public class Singup {
		
	String hospitalid,hospitalname,website,password,contact,address,email;

	public String getHospitalid() {
		return hospitalid;
	}

	public void setHospitalid(String hospitalid) {
		this.hospitalid = hospitalid;
	}

	public String getHospitalname() {
		return hospitalname;
	}

	public void setHospitalname(String hospitalname) {
		this.hospitalname = hospitalname;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public int register()
	{
		Connection con = DataBaseCon.conn();
		String query = "insert into hospital values(?,?,?,?,?,?,?)"; 
		PreparedStatement ps ;
		try {
			 ps = con.prepareStatement(query);
			ps.setString(1,hospitalid);
			ps.setString(2,hospitalname);
			ps.setString(3,email);
			ps.setString(4,password);
			ps.setString(5,address);
			ps.setString(6,contact);
			ps.setString(7,website);
		
		return ps.executeUpdate();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
	
}
