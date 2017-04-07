package DataFetch;


	
	

	import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.util.Vector;

	import DataBaseConnection.DataBaseCon;

	public class Admin_patient_list {
		
	  public Vector<String>  Name = new Vector<String>();
		public Vector<String>  Add = new Vector<String>();
	 public	Vector<String>  ack_id = new Vector<String>();
	 public	Vector<String>  pname = new Vector<String>();
		
		
		public void search()
		{
			String Query = "SELECT Hospital_Name,Address,ack_id,patientname FROM hospital h,patientbill p where h.Hospital_Id=p.hospid";
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
					ack_id.addElement(rs.getString(3));
					pname.addElement(rs.getString(3));
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
		
		public Vector<String> ack(){
			return ack_id;
		}
		
		public Vector<String> pname(){
			return pname;
		}

	}

	


