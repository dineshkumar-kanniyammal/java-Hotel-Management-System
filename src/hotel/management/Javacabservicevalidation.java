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
 * Servlet implementation class cab
 */
@WebServlet("/Javacabservicevalidation")
public class Javacabservicevalidation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Javacabservicevalidation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user = request.getParameter("auth_user");
		String drivername = request.getParameter("auth_drivername");
		String driverphone = request.getParameter("auth_driverphone");
     	String carno = request.getParameter("auth_carno");
		
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
						PreparedStatement statement = connection.prepareStatement("SELECT * FROM CABSERVICES");
					    ResultSet rs = statement.executeQuery();
					}
				catch(SQLException e)
				{
					e.printStackTrace();
				    PreparedStatement statement = connection.prepareStatement("CREATE TABLE CABSERVICES(CUSTOMERID NUMBER(20)PRIMARY KEY,DRIVERNAME VARCHAR2(20),DRIVERPHONE NUMBER(20),CARNO NUMBER(20))");
					ResultSet rs=statement.executeQuery();
				}
				
				PreparedStatement statement = connection.prepareStatement("SELECT * FROM CABSERVICES WHERE CUSTOMERID=? ");
				statement.setInt(1, Integer.parseInt(user));
				ResultSet rs = statement.executeQuery();
				if(rs.next()) {
					
					out.println("<p class=\"bg-danger\">All Ready Cab Booking</p></a>");
					out.println("<meta http-equiv=\"refresh\" content=\"3;url=customercabrequest.jsp\" />");
					
				} else {
                PreparedStatement statement2 = connection.prepareStatement("INSERT INTO CABSERVICES VALUES(?,?,?,?)");
        		statement2.setInt(1, Integer.parseInt(user));
				statement2.setString(2, drivername);
        		statement2.setInt(3, Integer.parseInt(driverphone));
        		statement2.setInt(4, Integer.parseInt(carno));
				ResultSet rs2 = statement2.executeQuery();
				out.println("<p class=\"bg-danger\">Cab Booked</p></a>");
				out.println("<meta http-equiv=\"refresh\" content=\"3;url=customerprofile.jsp\" />");
			   }
			   }
				catch(Exception e) {
				e.printStackTrace();
		    	}				
	            }

	            }
                }
