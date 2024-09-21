package LibraryProject;

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


public class BorrowedBooks extends HttpServlet 
{
	
	 private Connection con;

	    public void init(ServletConfig config) throws ServletException {
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
		
		 String user = request.getParameter("userName");
		
		response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        
        if (user != null) {
            String sql = "SELECT * FROM borrowed_books WHERE username=?";
            try (PreparedStatement pst = con.prepareStatement(sql)) {
                pst.setString(1, user);
                try (ResultSet rs = pst.executeQuery()) {
                    pw.println("<html><body>");
                    pw.println("<h2>Book Details:</h2>");
                    pw.println("<table border='1'>");
                    pw.println("<tr>");
                    pw.println("<th>Book ID</th>");
                    pw.println("<th>Title</th>");
                    pw.println("<th>USER NAME</th>");
                    pw.println("<th>AuthorID</th>");
                    pw.println("<th>BORROW_DATE</th>");
                    pw.println("<th>RETURN_DATE</th>");
                    if (rs.next()) {
                        pw.println("<tr>");
                        pw.println("<td>" + rs.getString("BOOK_ID") + "</td>");
                        pw.println("<td>" + rs.getString("TITLE") + "</td>");
                        pw.println("<td>" + rs.getString("USERNAME") + "</td>");
                        pw.println("<td>" + rs.getString("AUTHOR_ID") + "</td>");
                        pw.println("<td>" + rs.getString("BORROWDATE") + "</td>");
                        pw.println("<td>" + rs.getString("RETURNDATE") + "</td>");
                        pw.println("</tr>");
                    }
                    pw.println("</table>");
                    pw.println("</body></html>");
                    System.out.println("success");
                }
            } catch (SQLException e) {
                log("Error processing request: " + e.getMessage(), e);
                throw new ServletException(e);
            }
        } 
	}

}
