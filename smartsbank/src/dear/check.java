package dear;

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
 * Servlet implementation class check
 */
@WebServlet("/check")
public class check extends HttpServlet {
	
       
   
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String l=request.getParameter("user");
		String z=request.getParameter("email");
		out.println("hello");
		try{
		Class.forName("com.mysql.jdbc.Driver");    
	    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
		String query ="SELECT * from signin where lname='"+l+"' and email='"+z+"';";
        PreparedStatement ps=conn.prepareStatement(query);
        ResultSet rs = ps.executeQuery(query); 
        rs.next();
        request.getRequestDispatcher("check2").forward(request, response);
		}
        catch (ClassNotFoundException | SQLException e){
			
	        out.print("wrong details");
			}
		
}
}
