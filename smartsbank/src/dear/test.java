package dear;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.prism.Image;

import java.sql.*;
import java.io.*;
/**
 * Servlet implementation class test
 */
@WebServlet("/test")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login?useSSL=false","root","");
		String sql="select image from signin where username='Rachel';";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery(sql);
		String imgLen="";
		  rs = ps.executeQuery
		  ("select image from pictures where id='5'");
		  if(rs.next()){
		  int len = imgLen.length();
		  byte [] rb = new byte[len];
		  InputStream readImg = rs.getBinaryStream(1);
		  int index=readImg.read(rb, 0, len);  
		  System.out.println("index"+index);
		  ps.close();
		  response.reset();
		  response.setContentType("image/png");
		  response.getOutputStream().write(rb,0,len);
		  response.getOutputStream().flush();  
		
		
	      }
		}
		catch(ClassNotFoundException | SQLException e)
		{
			out.print("sorry");
		}
	}

}
