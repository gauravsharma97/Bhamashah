package DataFetch;

    import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.util.Vector;

	import DataBaseConnection.DataBaseCon;

	public class admin_clear  {
		
	  public Vector<String>  Name = new Vector<String>();
		public Vector<String>  bill = new Vector<String>();
	 public	Vector<String>  ack_id = new Vector<String>();
	 public	Vector<String>  pname = new Vector<String>();
	 public	Vector<String>  amt = new Vector<String>();
	 public	Vector<String>  id = new Vector<String>();
		
		public void search()
		{
			String Query = "SELECT Hospital_Name,ack_id,billno,patientname,amount,hospid FROM hospital h,patientbill p where h.Hospital_Id=p.hospid and p.flag='FALSE'";
			Connection con = DataBaseCon.conn();
			PreparedStatement  ps;
			try 
			{  
				ps = con.prepareStatement(Query);
				ResultSet rs= ps.executeQuery();
				while(rs.next())
				{
					Name.addElement(rs.getString(1));
					bill.addElement(rs.getString(3));
					ack_id.addElement(rs.getString(2));
					pname.addElement(rs.getString(4));
					amt.addElement(rs.getString(5));
					id.addElement(rs.getString(6));
				}
			} 
			catch (SQLException e) {
				
				e.printStackTrace();
			}
			
		}
		
		public Vector<String> hospName(){
			return Name;	
		}
		
		public Vector<String> bill(){
			return bill;
		}
		
		public Vector<String> ack(){
			return ack_id;
		}
		
		public Vector<String> pname(){
			return pname;
		}
		
		public Vector<String> amt(){
			return amt;
		}
		
		public Vector<String> id(){
			return id;
		}

	}

	





