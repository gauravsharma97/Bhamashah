package DataBaseConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBaseCon {
		
		static Connection con;
		
		public static Connection conn()
		{
			if(con==null){
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Bhamashah","root","iamthe1");
			} catch (SQLException | ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
			return con;
		}
	
}
