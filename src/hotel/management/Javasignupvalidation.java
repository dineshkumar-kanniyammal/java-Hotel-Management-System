package hotel.management;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Login
 */
@WebServlet("/Javasignupvalidation")
public class Javasignupvalidation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Javasignupvalidation() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
	ServletException, IOException {
	    String customerid = request.getParameter("auth_user1");
		String password = request.getParameter("auth_key1");
		String conformpassword = request.getParameter("auth_key2");
		response.setContentType("text/html");
		try(PrintWriter out=response.getWriter()) {
			out.println("<!DOCTYPE html>");
			out.println("<head>");
			out.println("<title>Login Validate - Bank</title>");
			out.println("<link rel=\"stylesheet\"href=\"bootstrap/css/bootstrap.min.css\"type=\"text/css\" />");
			out.println("<link rel=\"stylesheet\"href=\"bootstrap/css/bootstraptheme.min.css\"type=\"text/css\" />");
			out.println("</head>");
			out.println("<body>");
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
             try{
					
				PreparedStatement statement = connection.prepareStatement("SELECT * FROM USERTABLE");
				ResultSet rs = statement.executeQuery();			
				}
				catch(SQLException e)
				{
					e.printStackTrace();
					PreparedStatement statement = connection.prepareStatement("CREATE TABLE USERTABLE(CUSTOMERID NUMBER(10)PRIMARY KEY,PASSWORD VARCHAR2(20))");
					ResultSet rs=statement.executeQuery();
					PreparedStatement statement4 = connection.prepareStatement("INSERT INTO USERTABLE VALUES(12345,'admin')");
					ResultSet rs1=statement4.executeQuery();
				}
                PreparedStatement statement = connection.prepareStatement("SELECT * FROM USERTABLE WHERE CUSTOMERID=? ");
				statement.setInt(1, Integer.parseInt(customerid));
				ResultSet rs = statement.executeQuery();
				if(rs.next()) {
						out.println("<p class=\"bg-danger\">Signup Failed</p></a>");
					    out.println("<meta http-equiv=\"refresh\" content=\"3;url=customercreatenewaccount.jsp\" />");
				} else {
				PreparedStatement statement2 = connection.prepareStatement("INSERT INTO USERTABLE VALUES(?,?)");
				statement2.setInt(1, Integer.parseInt(customerid));
				statement2.setString(2, password);
				ResultSet rs2 = statement2.executeQuery();
				out.println("<p class=\"bg-danger\">SignupSuccessfully</p></a>");
				out.println("<meta http-equiv=\"refresh\" content=\"3;url=HotelHome.html\" />");
				}
			    }
				catch(Exception e) {
				e.printStackTrace();
			    }
			    out.println("</body>");
			    out.println("</html>");
		        } 
		        }
                }










