package dear;

import java.io.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*; 
@WebServlet("/dear")
public class dear extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String l=request.getParameter("first");
		String p=request.getParameter("last");
		String dbUsername,dbPassword;
		try{
		Class.forName("com.mysql.jdbc.Driver");    
	    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
	    String query ="SELECT *FROM signin where username='"+l+"' and password='"+p+"';";
        PreparedStatement ps=conn.prepareStatement(query);
        ResultSet rs = ps.executeQuery(query); 
        rs.next();
        dbUsername = rs.getString("username");
        dbPassword = rs.getString("password");
        	if(dbUsername.equals(l) && dbPassword.equals(p))
        	{
        		HttpSession d=request.getSession(true);
        		d.setAttribute("user",l);
        		String query1 ="SELECT *FROM accounts where username='"+l+"';";
        		PreparedStatement pse=conn.prepareStatement(query1);
                ResultSet rse = pse.executeQuery(query1); 
                rse.next();
                String number=rse.getString("accountno");
                Double balance= rse.getDouble("amount");
                String type=rse.getString("accounttype");
                d.setAttribute("type",type);
                d.setAttribute("number", number);
                d.setAttribute("balance", balance);
                
                
                pse.close();
        		request.getRequestDispatcher("dash1.jsp").forward(request,response);
        		
        		
        	}
        	else
        	{
        		out.print("login failed");
        	}
      }
		
        
		catch (ClassNotFoundException | SQLException e){
			
        out.print("wrong username or password");
		}
	
}
}

