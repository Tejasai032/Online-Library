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


public class Showstaff extends HttpServlet {
    Connection con;
    PreparedStatement pst;
    ResultSet rs;

    public void init(ServletConfig config) throws ServletException {
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

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        String sql = "SELECT * FROM StaffDetails";
        try {
            pst = con.prepareStatement(sql);  // Initialize PreparedStatement with the SQL query
            rs = pst.executeQuery();
            pw.println("<html><body>");
            pw.println("<h2>Staff Members:</h2>");
            pw.println("<table border='1'>");
            pw.println("<tr>");
            pw.println("<th>Staff ID</th>");
            pw.println("<th>Name</th>");
            pw.println("<th>Phone Number</th>");
            pw.println("<th>DOB</th>");
            pw.println("<th>Email</th>");
            pw.println("<th>Address</th>");
            pw.println("<th>Designation</th>");
            pw.println("</tr>");
            while (rs.next()) {
                pw.println("<tr>");
                pw.println("<td>" + rs.getString("STAFFID") + "</td>");
                pw.println("<td>" + rs.getString("NAME") + "</td>");
                pw.println("<td>" + rs.getString("PHONENUMBER") + "</td>");
                pw.println("<td>" + rs.getString("DOB") + "</td>");
                pw.println("<td>" + rs.getString("EMAIL") + "</td>");
                pw.println("<td>" + rs.getString("ADDRESS") + "</td>");
                pw.println("<td>" + rs.getString("DESIGNATION") + "</td>");
                pw.println("</tr>");
            }
            pw.println("</table>");
            pw.println("</body></html>");
        } catch (SQLException e) {
            log("Error processing request: " + e.getMessage(), e);
            throw new ServletException(e);
        } finally {
            try {
                if (rs != null) rs.close();
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
