package dear;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
@WebServlet("/transferresult2")
public class transferresult2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      PrintWriter out=response.getWriter();
      String h=request.getParameter("bn");
      String l=request.getParameter("acc");
      HttpSession d=request.getSession(true);
      d.setAttribute("bn",h);
      d.setAttribute("acc",l);
      try{	  
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
	    String query ="SELECT * FROM accounts where username='"+h+"' and accountno='"+l+"';";
      PreparedStatement ps=conn.prepareStatement(query);
      ResultSet rs=ps.executeQuery();
      rs.next();
      String y=rs.getString("username");
      String z=rs.getString("accountno");
   
      if(h.equals(y) && l.equals(z))
      {
    	  request.getRequestDispatcher("transferresult2.jsp").forward(request,response);
	  }
      }
      catch (ClassNotFoundException | SQLException z){
			String p="transferresult1.jsp";
	        out.print("username or accountno incorrect");
	        out.print("<html>");
	        out.print("<head> </head>");
	        out.print("<body>");
	        out.println("<a href="+p+">click here</a>");
			}
    }
      
	}
