package LoginConsole;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import DataBaseConnection.DataBaseCon;

public class BillCheck {
		
	String ack_id,patientname,amount,billno;

	public String getAck_id() {
		return ack_id;
	}

	public void setAck_id(String ack_id) {
		this.ack_id = ack_id;
	}

	public String getPatientname() {
		return patientname;
	}

	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getBillno() {
		return billno;
	}

	public void setBillno(String billno) {
		this.billno = billno;
	}
	
	
	public boolean registry()
	{
		Connection con = DataBaseCon.conn();
	
		PreparedStatement ps;
		
		String query="select * from patientdetail where P_id=? and P_name=?";
		
			try {
				ps = con.prepareStatement(query);
				ps.setString(1,ack_id);
				ps.setString(2,patientname);
				ResultSet res = ps.executeQuery();
				if(res.next())
					return true;
				else return false;
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return false;
	}
	
}
