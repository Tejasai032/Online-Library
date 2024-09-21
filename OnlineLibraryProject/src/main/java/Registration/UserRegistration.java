package Registration;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;


public class UserRegistration extends HttpServlet 
{
	
	 private Connection con;
	    private PreparedStatement pst;
	    private ResultSet rs;

	    public void init(ServletConfig config) throws ServletException 
	    {
	        try {
	            Class.forName("oracle.jdbc.driver.OracleDriver");
	            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "system", "orcl");
	            System.out.println("Database connection established successfully.");
	        } catch (ClassNotFoundException e) {
	            log("JDBC Driver not found: " + e.getMessage(), e);
	            throw new ServletException(e);
	        } catch (SQLException e) {
	            log("Database connection error: " + e.getMessage(), e);
	            throw new ServletException(e);
	        }
	    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        String staffid = request.getParameter("ID");
        
        String name = request.getParameter("Name");
        
        String pswd = request.getParameter("password");
        
        String phone = request.getParameter("phno");
        
        String address = request.getParameter("add");
        
        String email = request.getParameter("mail");
        
        String designation = request.getParameter("des");
        

        try {
            pst = con.prepareStatement("INSERT INTO Users VALUES (?, ?, ?, ?, ?, ?, ?)");

            
            pst.setString(1, staffid);
            pst.setString(2, name);
            pst.setString(3, pswd);
            pst.setString(4, phone);
            pst.setString(7, email);
            pst.setString(5, address);            
            pst.setString(6, designation);


            int row = pst.executeUpdate();
            if (row > 0) {
                pw.println("Values are inserted successfully");
            }
        } catch (SQLException e) {
            pw.println("Values are not inserted: " + e.getMessage());
            e.printStackTrace(pw);
        } finally {
            try {
                if (pst != null) pst.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
		
  }
	
	
	public void destroy() {
        try {
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
		
	}


