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


public class BookBorrow extends HttpServlet 
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
		
	        String bookID = request.getParameter("bookID");
	        String user = request.getParameter("userName");
	        System.out.println(user);

	        response.setContentType("text/html");
	        PrintWriter pw = response.getWriter();
	        
	        if (bookID != null) {
	            String sql = "SELECT * FROM books WHERE book_id=?";
	            try (PreparedStatement pst = con.prepareStatement(sql)) {
	                pst.setString(1, bookID);
	                try (ResultSet rs = pst.executeQuery()) {
	                    pw.println("<html><body>");
	                    pw.println("<h2>Book Details:</h2>");
	                    pw.println("<table border='1'>");
	                    pw.println("<tr>");
	                    pw.println("<th>Book ID</th>");
	                    pw.println("<th>Title</th>");
	                    pw.println("<th>ISBN</th>");
	                    pw.println("<th>Genre</th>");
	                    pw.println("<th>Publication Year</th>");
	                    pw.println("<th>AuthorID</th>");
	                    pw.println("<th></th>");
	                    pw.println("<th>BORROW_DATE</th>");
	                    pw.println("<th>RETURN_DATE</th>");
	                    pw.println("<th>---</th>");
	                    pw.println("</tr>");
	                    if (rs.next()) {
	                        pw.println("<tr>");
	                        pw.println("<td>" + rs.getString("BOOK_ID") + "</td>");
	                        pw.println("<td>" + rs.getString("TITLE") + "</td>");
	                        pw.println("<td>" + rs.getString("ISBN") + "</td>");
	                        pw.println("<td>" + rs.getString("GENRE") + "</td>");
	                        pw.println("<td>" + rs.getInt("PUBLICATON_YEAR") + "</td>");
	                        pw.println("<td>" + rs.getString("AUTHOR_ID") + "</td>");                       
	                        pw.println("<td>");
	                        pw.println("<form action='BookBorrow' method='post'>");
	                        pw.println("<input type='hidden' name='bookID' value='" + rs.getString("BOOK_ID") + "'>");
	                        pw.println("<input type='hidden' name='title' value='" + rs.getString("TITLE") + "'>");
	                        pw.println("<input type='hidden' name='user' value='" + user + "'>");
	                        pw.println("<input type='hidden' name='authorID' value='" + rs.getString("AUTHOR_ID") + "'>");
	                        pw.println("<td><input type='date' name='borrowDate' required></td>");
	                        pw.println("<td><input type='date' name='returnDate' required></td>");
	                        pw.println("<td><button type='submit'>BORROW</button></td>");
	                        pw.println("</form>");
	                        pw.println("</td>");
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
	        } else {
	            pw.println("<html><body>");
	            pw.println("<h2>No authorID or bookID provided.</h2>");
	            pw.println("</body></html>");
	        }
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		 System.out.println("doPost method called.");
		
		 response.setContentType("text/html");
         PrintWriter pw = response.getWriter();
		 
	    String bookID = request.getParameter("bookID");
	    System.out.println(bookID);
	    String title = request.getParameter("title");
	    System.out.println(title);
	    String user = request.getParameter("user");
	    System.out.println(user); 
	    String authorID = request.getParameter("authorID");
	    System.out.println(authorID);
	    java.sql.Date borrowDate = null;
	    java.sql.Date returnDate = null;

	    try {
	        String borrowDateStr = request.getParameter("borrowDate");
	        String returnDateStr = request.getParameter("returnDate");

	        System.out.println("Borrow Date: " + borrowDateStr);
	        System.out.println("Return Date: " + returnDateStr);

	        if (borrowDateStr != null && !borrowDateStr.isEmpty()) {
	            borrowDate = java.sql.Date.valueOf(borrowDateStr);
	        }

	        if (returnDateStr != null && !returnDateStr.isEmpty()) {
	            returnDate = java.sql.Date.valueOf(returnDateStr);
	        }

	    } catch (IllegalArgumentException e) {
	        pw.println("<h2>Error: Invalid date format. Please enter dates in the format yyyy-MM-dd.</h2>");
	        e.printStackTrace();
	        return;  // Exit method if date conversion fails
	    }

	    // Check if dates are null after conversion
	    if (borrowDate == null || returnDate == null) {
	        pw.println("<h2>Error: Borrow Date and Return Date must be provided!</h2>");
	        return;
	    }
	    
	    

	    String insertSQL = "INSERT INTO borrowed_books (book_id, title, username, author_id, borrowDate, returnDate) VALUES (?, ?, ?, ?, ?, ?)";

	    try (PreparedStatement pst = con.prepareStatement(insertSQL)) {
	        pst.setString(1, bookID);
	        pst.setString(2, title);
	        pst.setString(3, user);
	        pst.setString(4, authorID);
	        pst.setDate(5, borrowDate);
	        pst.setDate(6, returnDate);
	        System.out.println("values are assigned");

	        pst.executeUpdate();
	        pw.println("<h2>Book borrowed successfully!</h2>");
	        System.out.println("values are inserted");
	      
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		pw.println("<h2>An Error Was Occured!</h2>");
		e.printStackTrace();
	}


	}
	
}
	
