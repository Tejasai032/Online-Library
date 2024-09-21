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


public class AdminRegistration extends HttpServlet 
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

        String userid = request.getParameter("ID");
        pw.println(userid);
        String Fname = request.getParameter("FN");
        pw.println(Fname);
        String Lname = request.getParameter("LN");
        pw.println(Lname);
        String gender = request.getParameter("Gender");
        pw.println(gender);

        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
        java.util.Date utilDate = null;
        try {
            utilDate = sdf.parse(request.getParameter("dob"));
            
        } catch (ParseException e) {
            pw.println("Error parsing date: " + e.getMessage());
            return;
        }
        java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
        pw.println(sqlDate);
        String phone = request.getParameter("phno");
        pw.println(phone);
        String address = request.getParameter("add");
        pw.println(address);
        String email = request.getParameter("mail");
        pw.println(email);
        String password = request.getParameter("pswd");
        pw.println(password);

        try {
            pst = con.prepareStatement("INSERT INTO Author VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");

            
            pst.setString(1, Fname);
            pst.setString(2, Lname);
            pst.setString(3, gender);
            pst.setDate(4, sqlDate);
            pst.setString(5, phone);
            pst.setString(6, address);
            pst.setString(7, email);
            pst.setString(8, password);
            pst.setString(9, userid);

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
