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
 * Servlet implementation class Login
 */
@WebServlet("/Javaloginvalidation")
public class Javaloginvalidation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Javaloginvalidation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String customerid = request.getParameter("auth_user");
		String password = request.getParameter("auth_key");
		String type = request.getParameter("user_type");

		response.setContentType("text/html");
		try(PrintWriter out=response.getWriter()) {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "oracle");
				PreparedStatement psStmt = connection.prepareStatement("SELECT * FROM 	USERTABLE WHERE CUSTOMERID=? AND PASSWORD=? ");
				psStmt.setInt(1, Integer.parseInt(customerid));
				psStmt.setString(2, password);
				ResultSet rs = psStmt.executeQuery();
				if(customerid.equals(12345)||type.equals("Admin")){
					response.sendRedirect("administratorprofile.jsp");
				}
				else{
				if(rs.next()) {
					Cookie ck = new Cookie("user", rs.getString(1));
					ck.setMaxAge(24 * 60 * 60);
					response.addCookie(ck);
					out.println("<meta http-equiv=\"refresh\" content=\"5;url="+customerid+"/\" /><div class=\"alert alert-success\"><b>Login Success</b> Loading.. </div>");
					response.sendRedirect("customerprofile.jsp");
				} else {
					out.println("<link rel=\"stylesheet\" href=\"bootstrap/css/bootstrap.min.css\" type=\"text/css\" /><meta http-equiv=\"refresh\" content=\"3;url=HotelHome.html\" /><div style=\"margin:150px;\" class=\"alert alert-danger\"><b>Login Error</b> It will redirect</div>");
				}
				}
			    } catch(Exception e) {
			     	 out.println(e);
			    }
		        }
	            }
                }