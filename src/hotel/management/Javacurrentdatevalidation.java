package hotel.management;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class currentdate
 */
@WebServlet("/Javacurrentdatevalidation")
public class Javacurrentdatevalidation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Javacurrentdatevalidation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String cdate =request.getParameter("currentdate");
		response.setContentType("text/javascript");
		try(PrintWriter out=response.getWriter()) {
			try {
         		 Cookie ck = new Cookie("auth_checkin", cdate);
		    	 ck.setMaxAge(24 * 60 * 60);
		    	 response.addCookie(ck);
			     response.sendRedirect("administratorcurrentdateinformation.jsp");
		        }
			   catch(Exception e) {
					out.println(e);
	            }
                }
	            }
                }