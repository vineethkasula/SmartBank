package dear;

import java.util.UUID;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

@WebServlet("/transferresult3")
public class transferresult3 extends HttpServlet {
	

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String l=request.getSession(false).getAttribute("user").toString();
		PrintWriter out=response.getWriter();
		String h=(String) request.getSession(false).getAttribute("bn");
		String ho=(String) request.getSession(false).getAttribute("acc");
		String m=(String) request.getSession(false).getAttribute("number");
		out.println(m);
	String amount=request.getParameter("amount");
	Double am= Double.parseDouble(amount);
	Double r=am;
	Double a= (double)0;
	if(am>=1000 && am<10000)
	{
		r=r+(double)2;
		a=a+2;
	}
	if(am>=10000 && am<50000)
	{
		a=a+5;
		r=r+(double)5;
	}
	if(am>=50000 && am<10000)
	{
		a=a+25;
		r=r+25;
	}
	try{
	Class.forName("com.mysql.jdbc.Driver");
    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
	    
    String query21 ="SELECT *FROM accounts where username='"+l+"';";
	    PreparedStatement ps=conn.prepareStatement(query21);
	    ResultSet rl=ps.executeQuery();
	    rl.next();
		Double z=rl.getDouble("amount"); 
		z=z-r;
		String query22="UPDATE accounts set amount="+z+" where username='"+l+"';";
		PreparedStatement pl=conn.prepareStatement(query22);
		int yy=pl.executeUpdate();
		if(yy > 0)
		{
			out.println("");
		}
	
	
	
	String query11 ="SELECT * FROM accounts where username='"+h+"';";
    PreparedStatement pm=conn.prepareStatement(query11);
    ResultSet rs=pm.executeQuery();
    rs.next();
	Double p=rs.getDouble("amount");
	p=p+am;
	String query12="UPDATE accounts set amount="+p+" where username='"+h+"';";
	PreparedStatement pp=conn.prepareStatement(query12);
	int yp=pp.executeUpdate();
	if(yp > 0)
	{
		out.print("");
	}

	
	
	DateFormat df=new SimpleDateFormat("yyyy/MM/DD HH:MM:SS");
	Date date=new Date();
	UUID id=UUID.randomUUID();
	String iop=id.toString();
	String uy="insert into bank values(?,?,?,?,?,?,?,?)";
	PreparedStatement pr=conn.prepareStatement(uy);
	pr.setDouble(1, am);
	pr.setString(2, iop);
	pr.setString(3, df.format(date));
	pr.setDouble(4, a);
	pr.setString(5, l);
	pr.setString(6, h);
	pr.setString(7, ho);
	pr.setString(8,m);
	int ii=pr.executeUpdate();
		if(ii>0)
		{ 
			out.println("transferred successfully");
			out.println("your transaction id is:"+id);
			
		}
		pr.close();
}
	
	
	catch (ClassNotFoundException | SQLException z){
		out.print("hello");
		}
	
	}
}
