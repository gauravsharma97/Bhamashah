package DataFetch;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.mysql.jdbc.ResultSet;

/**
 * Servlet implementation class Sucess
 */
@WebServlet("/Sucess")
public class respons extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
  
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StringBuilder sb = new StringBuilder();
	    try 
	    {
	      BufferedReader reader = request.getReader();
	      String line = null;
	      while ((line = reader.readLine()) != null)
	      { sb.append(line);
	      }
	    } catch (Exception e) { e.printStackTrace(); }
	
	    PrintWriter out = response.getWriter();
	      out.println(sb);
	      
	    JSONParser parser = new JSONParser();
	    JSONObject joUser = null;
	      String PRN="";
	      String Status="";
	         try
		    {
		    	//creating JSONObject out of JSON formatted String
		      joUser = (JSONObject) parser.parse(sb.toString());
		      PRN= joUser.get("PRN").toString();
		      Status= joUser.get("username").toString();
		      
		    } catch (Exception e) { e.printStackTrace(); }

			System.out.print("???????????????"+Status);
			
	}

}