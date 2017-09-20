package dear;

import java.io.IOException;
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
import java.io.*;

@WebServlet("/request")
public class request extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String a=request.getParameter("name");
		String b=request.getParameter("email");
		String c=request.getParameter("number");
		String d=request.getParameter("subject");
		String e=request.getParameter("message");
		try{
			Class.forName("com.mysql.jdbc.Driver");
		    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
		    String st="insert into requests values(?,?,?,?,?)";
		    PreparedStatement ps=conn.prepareStatement(st);
             ps.setString(1,a);
             ps.setString(2,b);
             ps.setString(3,c);
             ps.setString(4,d);
             ps.setString(5,e);
             int yu=ps.executeUpdate();
			if(yu > 0)
			{
				out.println("your query has been received.");
				out.println("Thanks for using our services.");
			}
			ps.close();
		}
			catch (ClassNotFoundException | SQLException z){
				
		        out.print("not updated");
				}
		
	}

}
