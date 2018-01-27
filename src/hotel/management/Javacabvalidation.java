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
@WebServlet("/Javacabvalidation")
public class Javacabvalidation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Javacabvalidation() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
	ServletException, IOException {
		// TODO Auto-generated method stub
		String drivername = request.getParameter("auth_drivername");
		String driverphone = request.getParameter("auth_driverphone");
        String carno = request.getParameter("auth_carno");
		String cartype = request.getParameter("auth_cartype");
		
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
						PreparedStatement statement = connection.prepareStatement("SELECT * FROM CABDETAILS");
				         ResultSet rs = statement.executeQuery();
     				}
				catch(SQLException e)
				{
					e.printStackTrace();
				    PreparedStatement statement = connection.prepareStatement("CREATE TABLE CABDETAILS(DRIVERNAME VARCHAR2(20)NOT  NULL,DRIVERPHONE NUMBER(10),CARNO NUMBER(10),CARTYPE VARCHAR2(20))");
					ResultSet rs=statement.executeQuery();
				}
				PreparedStatement statement = connection.prepareStatement("SELECT * FROM CABDETAILS WHERE DRIVERNAME=? ");
				statement.setString(1, drivername);
				ResultSet rs = statement.executeQuery();
				if(rs.next()) {
						out.println("<p class=\"bg-danger\">Add Cab information Failed</p></a>");
					    out.println("<meta http-equiv=\"refresh\" content=\"3;url=customercreatenewaccount.jsp\" />");
				} else {
				PreparedStatement statement2 = connection.prepareStatement("INSERT INTO CABDETAILS VALUES(?,?,?,?)");
                statement2.setString(1, drivername);
        		statement2.setInt(2, Integer.parseInt(driverphone));
        		statement2.setInt(3, Integer.parseInt(carno));
				statement2.setString(4, cartype);
				ResultSet rs2 = statement2.executeQuery();
				out.println("<p class=\"bg-danger\">CAB DETAIL ADDED </p></a>");
				out.println("<meta http-equiv=\"refresh\" content=\"3;url=administratorprofile.jsp\" />");
			}
			}
				catch(Exception e) {
				e.printStackTrace();
			}
			out.println("</body>");
			out.println("</html>");
		} }
}










