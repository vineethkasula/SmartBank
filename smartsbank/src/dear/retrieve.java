package dear;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/retrieve")
public class retrieve extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=request.getSession(false).getAttribute("username").toString();
		PrintWriter out=response.getWriter();
		try{
		Class.forName("com.mysql.jdbc.Driver");
	    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
	    String query ="SELECT *FROM bank where username='"+a+"';";
        PreparedStatement ps=conn.prepareStatement(query);
        ResultSet rs = ps.executeQuery(query); 
        while(rs.next())
        {
        	Double f= rs.getDouble("amount");
        	String fg= rs.getString("id");
        	String fp= rs.getString("date");
        	Double fs= rs.getDouble("charge");
        	String fo= rs.getString("transferredto");
        	String fw= rs.getString("accountno");
        	out.print("<html>");
        	out.print("<head> </head>");
        	out.print("<body>");
        	out.println("<p>");
        	out.println("amount transferred is:"+f);
        	out.print("<br/>");
        	out.println("transaction id is:"+fg);
        	out.print("<br/>");
        	out.println("transaction date is:"+fp);
        	out.print("<br/>");
        	out.println("amount charged for transaction is:"+fs);
        	out.print("<br/>");
        	out.println("amount transferred to:"+fo);
        	out.print("<br/>");
        	out.println("account no.is:"+fw);
        	out.print("<br/>");
            out.println("");
            out.println("</p>");
            out.print("</body>");
            out.print("</html>");
        }
        
        
        
	}
		catch (ClassNotFoundException | SQLException e){
			
	        out.print("wrong username or password");
			}
}
}