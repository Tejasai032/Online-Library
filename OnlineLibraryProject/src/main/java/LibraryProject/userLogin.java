package LibraryProject;

import jakarta.servlet.RequestDispatcher;
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


public class userLogin extends HttpServlet 
{

	Connection con;
    PreparedStatement pst;
    ResultSet rs;

    public void init(ServletConfig config) throws ServletException 
    {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "system", "orcl");
            System.out.println("Database connection established successfully.");
        } catch (ClassNotFoundException e) {
            System.out.println(e);
            log("JDBC Driver not found: " + e.getMessage(), e);
            throw new ServletException(e);
        } catch (SQLException e) {
            System.out.println("Database connection failed.");
            log("Database connection error: " + e.getMessage(), e);
            throw new ServletException(e);
        }
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String u = request.getParameter("userID");
        String password = request.getParameter("Password");
        System.out.println("Username received: " + u);

        try {
            response.setContentType("text/html");
            PrintWriter pw = response.getWriter();
            pw.println("<html>");
            pw.println("<head><title>Welcome</title></head>");
            pw.println("<body>");

            String sql = "SELECT * FROM Users WHERE user_id = ?";
            pst = con.prepareStatement(sql);
            pst.setString(1, u);
            rs = pst.executeQuery();

            if (!rs.next()) {
                pw.println("<h1>The user " + u + " does not exist</h1>");
                System.out.println("User not found: " + u);
            } else {
                String s1 = rs.getString("user_id");
                String s2 = rs.getString("username");
                String s3 = rs.getString("password");
               

                if (s3.equals(password)) {
                    request.setAttribute("userName", s2);
                    request.setAttribute("userID", s1);
                    RequestDispatcher dispatcher = request.getRequestDispatcher("UserPage.jsp");
                    dispatcher.forward(request, response);
                    System.out.println("Authentication successful. Redirecting to UserPage.jsp");
                    return; // Ensure no further code is executed after redirect
                } else {
                    pw.println("<h1>Authentication failed due to incorrect password</h1>");
                    System.out.println("Authentication failed for user: " + u + " due to incorrect password.");
                }
            }

            pw.println("</body></html>");
            pw.flush();
            pw.close();
        } catch (Exception e) {
            log("Error processing request: " + e.getMessage(), e);
            throw new ServletException(e);
        } finally {
            try {
                if (rs != null) rs.close();
                if (pst != null) pst.close();
            } catch (Exception e) {
                log("Error closing resources: " + e.getMessage(), e);
            }
        }
	}

}
