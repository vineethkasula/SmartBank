package dear;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/fixeddeposit1")
public class fixeddeposit1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String b=request.getParameter("name");
		String c=request.getParameter("email");
		String d=request.getParameter("number");
		out.print("hello"+d);
		try{
			Class.forName("com.mysql.jdbc.Driver");
		    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
		    String sql="insert into interests  values (?,?,?)";
		    PreparedStatement ps=conn.prepareStatement(sql);
		    ps.setString(1,b);
		    ps.setString(2,c);
		    ps.setString(3,d);
		   int i=ps.executeUpdate();
		   if(i>0)
		   {
			   out.print("<html>");
			   out.print("<body>");
			   out.println("<h2>");
			   out.println("Thanks for depositing in our bank.Trust is the stepping stone for future gain");
			   out.println("We will soon mail you  details regarding terms and policiies of your interested investment");
			   out.println("</h2>");
			   out.println("</body>");
			   out.println("</html>");
		   }
		   ps.close();
		    
		}
          catch (ClassNotFoundException | SQLException z){
			
	        out.print("not updated");
			}
		
	}

}
