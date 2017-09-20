package dear;
 
import java.io.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/check3")
public class check3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String mail=request.getSession(false).getAttribute("mail").toString();
		String mail2=request.getParameter("send");
		String mail3=request.getSession(false).getAttribute("userdp").toString();
		out.print("updating and verifying");
		if(mail.equals(mail2))
		{
			try{
				Class.forName("com.mysql.jdbc.Driver");
			    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
			    out.print("hello");
			    String query12="UPDATE signin set password='"+mail+"' where lastname='"+mail3+"';";
				PreparedStatement pp=conn.prepareStatement(query12);
				int yp=pp.executeUpdate(query12);
				if(yp > 0)
				{
					out.print("updating your password");
				}
				pp.close();
				out.print("redirecting to html page");
				out.println("<html>");
			       out.println("<head> </head>");
			       out.println("<body>");
			       String p="new_login.html";
			       out.println("<a href="+p+">click here</a>");
			       out.println("</body>");
			       out.println("</html>");
				
			    
		      }
			catch (ClassNotFoundException | SQLException e){
				
		        out.print("wrong username or password");
				}
	   }
	}
}

