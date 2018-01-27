package hotel.management;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class changepass
 */
@WebServlet("/Javapasswordvalidation")
public class Javapasswordvalidation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Javapasswordvalidation() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = request.getParameter("auth_user5");
		String pass = request.getParameter("auth_key");
		String newpass = request.getParameter("new_auth_key");
		
		response.setContentType("text/html");
		try(PrintWriter out=response.getWriter()) {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "oracle");
				PreparedStatement psStmt = connection.prepareStatement("UPDATE USERTABLE SET PASSWORD=? WHERE CUSTOMERID=?");
				psStmt.setString(1,user);
				psStmt.setString(2, newpass);
				psStmt.executeUpdate();
				out.println("<p class=\"bg-danger\">Password Change Successfully</p></a>");
				out.println("<meta http-equiv=\"refresh\" content=\"3;url=customerprofile.jsp\" />");
				} catch(Exception e) {
				out.println(e);
			}
		}
	}

}
