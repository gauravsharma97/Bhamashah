package DataFetch;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DataBaseConnection.DataBaseCon;

public class HospitalName {
	
	public static String hospitalName(String hospId)
	{
		
		Connection con = DataBaseCon.conn();
		String Query = "select Hospital_Name from hospital where Hospital_Id=?";
		PreparedStatement ps;
		
		
		try {
			ps = con.prepareStatement(Query);
			ps.setString(1,hospId);
			ResultSet rs = ps.executeQuery();
			rs.next();
			return rs.getString(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "Aishwary";
	
	}
	
	
	public static String hospitalSite(String hospId)
	{
		
		Connection con = DataBaseCon.conn();
		String Query = "select WebSite from hospital where Hospital_Id=?";
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(Query);
			ps.setString(1,hospId);
			ResultSet rs = ps.executeQuery();
			rs.next();
			return rs.getString(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "Aishwary";
	
	}

	
	
	
}
