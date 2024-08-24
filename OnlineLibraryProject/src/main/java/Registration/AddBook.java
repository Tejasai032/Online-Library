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

public class AddBook extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
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

        String bookid = request.getParameter("ID");
        System.out.println(bookid);
        String title = request.getParameter("TITLE");
        System.out.println(title);
        String isbn = request.getParameter("ISBN");
        System.out.println(isbn);
        String gener = request.getParameter("GENER");
        System.out.println(gener);
        String publication = request.getParameter("YEAR");
        System.out.println(publication);
        String author = request.getParameter("AUTHORID");
        System.out.println(author);

        try {
            pst = con.prepareStatement("INSERT INTO books VALUES (?, ?, ?, ?, ?, ?)");

            
            pst.setString(1, bookid);
            pst.setString(2, title);
            pst.setString(3, isbn);
            pst.setString(4, gener);
            pst.setString(5, publication);
            pst.setString(6, author);


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
