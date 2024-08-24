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


public class ShowBookDetails extends HttpServlet {
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

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String authorID = request.getParameter("authorID");
        String authorName = request.getParameter("authorName");
        String bookID = request.getParameter("bookID");

        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        if (authorID != null) {
            String sql = "SELECT * FROM books WHERE author_id=?";
            try (PreparedStatement pst = con.prepareStatement(sql)) {
                pst.setString(1, authorID);
                try (ResultSet rs = pst.executeQuery()) {
                    pw.println("<html><body>");
                    pw.println("<h2>Books by Author " + authorName + ":</h2>");
                    pw.println("<table border='1'>");
                    pw.println("<tr>");
                    pw.println("<th>Book ID</th>");
                    pw.println("<th>Title</th>");
                    pw.println("<th>ISBN</th>");
                    pw.println("<th>Genre</th>");
                    pw.println("<th>Publication Year</th>");
                    pw.println("</tr>");
                    while (rs.next()) {
                        pw.println("<tr>");
                        pw.println("<td>" + rs.getString("BOOK_ID") + "</td>");
                        pw.println("<td>" + rs.getString("TITLE") + "</td>");
                        pw.println("<td>" + rs.getString("ISBN") + "</td>");
                        pw.println("<td>" + rs.getString("GENRE") + "</td>");
                        pw.println("<td>" + rs.getInt("PUBLICATON_YEAR") + "</td>");
                        pw.println("</tr>");
                    }
                    pw.println("</table>");
                    pw.println("</body></html>");
                }
            } catch (SQLException e) {
                log("Error processing request: " + e.getMessage(), e);
                throw new ServletException(e);
            }
        } else if (bookID != null) {
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
                    pw.println("</tr>");
                    if (rs.next()) {
                        pw.println("<tr>");
                        pw.println("<td>" + rs.getString("BOOK_ID") + "</td>");
                        pw.println("<td>" + rs.getString("TITLE") + "</td>");
                        pw.println("<td>" + rs.getString("ISBN") + "</td>");
                        pw.println("<td>" + rs.getString("GENRE") + "</td>");
                        pw.println("<td>" + rs.getInt("PUBLICATON_YEAR") + "</td>");
                        pw.println("<td>" + rs.getString("AUTHOR_ID") + "</td>");
                        pw.println("</tr>");
                    }
                    pw.println("</table>");
                    pw.println("</body></html>");
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

    public void destroy() {
        try {
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
