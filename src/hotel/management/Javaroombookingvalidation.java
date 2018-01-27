package hotel.management;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class bookingValidate
 */
@WebServlet("/Javaroombookingvalidation")
public class Javaroombookingvalidation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Javaroombookingvalidation() {
    	super();
    	// TODO Auto-generated constructor stub
    	}
    	/**
    	* @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    	*/
    	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
    	ServletException, IOException {
    	// TODO Auto-generated method stub

        String customerid = request.getParameter("auth_user");
    	String bookingname = request.getParameter("auth_name");
    	String idproof = request.getParameter("auth_id");
    	String checkindate = request.getParameter("auth_checkin");
    	String checkoutdate = request.getParameter("auth_checkout");
    	String advancepay = request.getParameter("auth_amountadv");
    	String roomno = request.getParameter("roomno");
    	String floorno = request.getParameter("floorno");
    	String roomtype = request.getParameter("roomtype");
    	String roomservice = request.getParameter("roomservice");
    	String price = request.getParameter("price");
    	String cab = request.getParameter("cab");
    	
    	response.setContentType("text/html");
    	try(PrintWriter out=response.getWriter()) {
    	out.println("<!DOCTYPE html>");
    	out.println("<head>");
    	out.println("<title>Booking Validate - Hotel</title>");
    	out.println("<link rel=\"stylesheet\"href=\"bootstrap/css/bootstrap.min.css\"type=\"text/css\" />");
    	out.println("<link rel=\"stylesheet\"href=\"bootstrap/css/bootstraptheme.min.css\"type=\"text/css\" />");
    	out.println("</head>");
    	out.println("<body>");
    	out.println("<form class=\"form-horizontal\" >");
    	try {
    	Class.forName("oracle.jdbc.driver.OracleDriver");
    	Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
    	try{
			PreparedStatement statement = connection.prepareStatement("SELECT * FROM USERDETAILS");
		    ResultSet rs = statement.executeQuery();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
			PreparedStatement statement = connection.prepareStatement("CREATE TABLE USERDETAILS(CUSTOMERID NUMBER(20)PRIMARY KEY,BOOKINGNAME VARCHAR2(20)NOT  NULL,IDPROOF VARCHAR2(20)NOT  NULL,CHECKINDATE DATE,CHECKOUTDATE DATE,ADVANCEPAY NUMBER(20))");
			ResultSet rs=statement.executeQuery();
			PreparedStatement statement1 = connection.prepareStatement("CREATE TABLE ROOMDETAILS(CUSTOMERID NUMBER(20)PRIMARY KEY,ROOMNO NUMBER(20),FLOORNO NUMBER(20),ROOMTYPE VARCHAR2(20),ROOMSERVICE VARCHAR2(20),PRICE NUMBER(20))");
			ResultSet rs1=statement1.executeQuery();			
		}
    	PreparedStatement statement = connection.prepareStatement("INSERT INTO USERDETAILS VALUES(?,?,?,?,?,?)");
		statement.setInt(1, Integer.parseInt(customerid));
    	statement.setString(2, bookingname);
    	statement.setString(3, idproof);
    	statement.setString(4, checkindate);
    	statement.setString(5, checkoutdate);
		statement.setInt(6, Integer.parseInt(advancepay));
    	ResultSet rs = statement.executeQuery();
        PreparedStatement statement1 = connection.prepareStatement("INSERT INTO ROOMDETAILS VALUES(?,?,?,?,?,?)");
		statement1.setInt(1, Integer.parseInt(customerid));
		statement1.setInt(2, Integer.parseInt(roomno));
		statement1.setInt(3, Integer.parseInt(floorno));
    	statement1.setString(4, roomtype);
    	statement1.setString(5, roomservice);
		statement1.setInt(6, Integer.parseInt(price));;
        ResultSet	rs1 = statement1.executeQuery();
    	out.println("<p class=\"bg-danger\">Room Booked</p></a>");
		out.println("<meta http-equiv=\"refresh\" content=\"3;url=customerprofile.jsp\" />");
        } catch(Exception e) {
    	e.printStackTrace();
    	}
    	out.println("</form>");
    	out.println("</body>");
    	out.println("</html>");
    	} 
    	}
    	}