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
@WebServlet("/change")
public class change extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String hu=request.getParameter("pass2");
		try{
		Class.forName("com.mysql.jdbc.Driver");    
	    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
	    String query ="SELECT *FROM signin where password='"+hu+"';";
        PreparedStatement ps=conn.prepareStatement(query);
        ResultSet rs = ps.executeQuery(query); 
        rs.next();
        request.getRequestDispatcher("change.jsp").forward(request, response);
        
		}
		catch (ClassNotFoundException | SQLException e){
			
	        out.print("password not matched");
			}
		
	}

	
	

}
