package LoginConsole;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.json.JSONArray;
import org.json.JSONObject;

import DataBaseConnection.DataBaseCon;

public class patient_reg {
	static String pehchanid;
	static String patientname;
	static String hospitalid;
	static int status=0;
	public String getPehchanid() {
		return pehchanid;
	}
	public void setPehchanid(String pehchanid) {
		this.pehchanid = pehchanid;
	}
	public String getPatientname() {
		return patientname;
	}
	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}

	public static void  sethid(String hid)
	{
		hospitalid=hid;
		
	}
	
public static boolean getHTML() throws Exception {
	     int flag=0; 
	     if(pehchanid.length()==7){
		 StringBuilder result = new StringBuilder();
	     String apiURL="https://apitest.sewadwaar.rajasthan.gov.in/app/live/Service/hofAndMember/ForApp/"+pehchanid+"?client_id=ad7288a4-7764-436d-a727-783a977f1fe1";
	      URL url = new URL(apiURL);
	      HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	      conn.setRequestMethod("GET");
	      BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	      String line;
	      while ((line = rd.readLine()) != null) {
	         result.append(line);
	      		}
	      rd.close();
	      
	      JSONObject obj = new JSONObject(result.toString());
	      
	      JSONObject obj1 = obj.getJSONObject("hof_Details");
	  if(obj1.length()==0)
	      {status=3;
	      
	      return false;
	      }
	      else{
	      String hof_name=obj1.getString("NAME_ENG");
	      String bhamasha_id=obj1.getString("BHAMASHAH_ID");
	      String account_id=obj1.getString("ACC_NO");
	      JSONArray arr = obj.getJSONArray("family_Details");
	      Vector<String> namevec = new Vector<String>();
	      Vector<String> relationvec = new Vector<String>();
	    int i;
	      for (i = 0; i < arr.length(); i++)
	     {
	         namevec.addElement(arr.getJSONObject(i).getString("NAME_ENG"));
	        relationvec.addElement(arr.getJSONObject(i).getString("RELATION_ENG"));
	     }
	   
	if(hof_name.equalsIgnoreCase(patientname))
	{
		flag=1;	
	}
	else{
	      for ( i = 0; i < arr.length(); i++)
	      {
	    	 if(namevec.elementAt(i).equalsIgnoreCase(patientname))
	    	     {
	    		flag=1; 
	    		break;
	    		 }
	    	
	      }
	}
	
	if(flag==1)
	{
		
		status=1;
		int f1=1;
		Connection con = DataBaseCon.conn();
		PreparedStatement ps;
		String query="select P_name from patientdetail where B_id=?";
		ps=con.prepareStatement(query);
		ps.setString(1,bhamasha_id);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			if(rs.getString(1).equalsIgnoreCase(patientname))
			{f1=0;
			break;}
			
		}
		if(f1==1){
		 query="insert into patientdetail values(?,?,?,?,?)";
		
		try {
			ps = con.prepareStatement(query);
			ps.setString(1,bhamasha_id);
			ps.setString(2,pehchanid);
			ps.setString(3,patientname);
			ps.setString(4,hospitalid);
			ps.setString(5,account_id);
			int res = ps.executeUpdate();
		if(res!=0)
		{
			
			return true;
		
		}
		else
		{
			
			
			return false;
		}
		
		
		
			
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		}
		else
		{
			status=4;
			return false;
			
		}
	}
	else
	{
		
		return false;
		
	}
	return false;
	}
	}

else
{
status=2;	

return false;
}
}     
	 
	 public static String getstatus()
		{
			
	if(status==1)
	{
		return "Database Error";
	}
	else if(status==0)
	{
		return "Patient donot belong to provided Pehchan ID";
	}
	else if(status==2)
	{
		return "Enter Valid Pehchan id";
	}
	else if(status==3) 
	{
		return "Details Not Found";
	}
	else
	{
		
		return "User already registered";
	}
}
}
