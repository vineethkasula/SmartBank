package dear;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Random;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/signup")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String a=request.getParameter("Full Name");
		String a1=request.getParameter("Full Name2");
		String b=request.getParameter("E-mail");
		String c=request.getParameter("dob");
		String d=request.getParameter("phone");
		String e=request.getParameter("fathername");
		String f=request.getParameter("flat");
		String g=request.getParameter("road");
		String h=request.getParameter("area");
		String i=request.getParameter("city");
		String j=request.getParameter("tp");
		String k=request.getParameter("pin");
		String l=request.getParameter("user");
		String m=request.getParameter("pass");
		String n=request.getParameter("repass");
		try{
		Class.forName("com.mysql.jdbc.Driver");
	    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/login?useSSL=false","root","");
	    String sql="insert into signin values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	    PreparedStatement ps=conn.prepareStatement(sql);
	    out.print("hello");
	    String po="";
	    if(a.equals(po)||a1.equals(po)||b.equals(po)||c.equals(po)||d.equals(po)||e.equals(po)||f.equals(po)||g.equals(po)||h.equals(po)||i.equals(po)||j.equals(po)||k.equals(po)||l.equals(po)||m.equals(po)||n.equals(po)||!m.equals(n))
	    {
	    	request.setAttribute("Error","required fields are not filled or mismatching of enter and re-enter passwords or username already exists");
	    	request.getRequestDispatcher("/error").forward(request,response);
	    }
	    else
	    {
	    ps.setString(1,a);
	    out.print("hello");
	    ps.setString(2,a1);
	    ps.setString(3,b);
	    ps.setString(4,c);
	    ps.setString(5,d);
	    ps.setString(6,e);
	    ps.setString(7,f);
	    ps.setString(8,g);
	    ps.setString(9,h);
	    ps.setString(10,i); 
	    ps.setString(11,j);
	    ps.setString(12,k);
	    ps.setString(13,l);
	    ps.setString(14,m);
	    ps.setString(15,n);
	    }
	    int num= ps.executeUpdate();
	    out.print("hello");
	    Random r=new Random();
	    int pose= 1000000000+ r.nextInt(900000000);
	    String hpo= Integer.toString(pose);
	    UUID rty= UUID.randomUUID();
	    String yz= rty.toString();
	    if(num>0 && m.equals(n))
	    {
	    	out.print("<html>");
	    	out.print("<head> </head>");
	    	out.print("<body>");
	    	out.print("<h1 style='text-align:center;'>");
	    	out.print("welcome Mr/Ms.");
	    	out.print(a+a1);
	    	out.print("</h1>");
	    	out.print("</body>");
	    	out.println("</html>");
	    	out.println("<p>your account no. is:"+hpo+"</p><br />");
	    	out.println("<p>your token number is:"+yz+"</p><br />");
	    	out.println("<p>for large amount go to our nearest branch / contact our mediators and add the money to your account with the help of token no. </p> </br>");
	    	out.println("<p>Thanks for using our services</p> <br />");
	    	out.print("<html>");
	    	out.print("<body>");
	    	out.print("<h3 style='text-align:center;'>");
	    	out.println("<p>Trust is the pay for comfort </p> <br /> ");
	    	out.print("</body>");
	    	out.print("</html>");
	    	Class.forName("com.mysql.jdbc.Driver");
		    Connection comm= DriverManager.getConnection("jdbc:mysql://localhost:3306/login?useSSL=false","root","");
		    String sqli="insert into accounts values(?,?,?,?)";
		    PreparedStatement pw=comm.prepareStatement(sqli);
		    double rt=50000;
		    pw.setString(1, l);
		    pw.setString(2, hpo);
		    pw.setDouble(3,rt);
		    pw.setString(4, yz);
		    int yu=pw.executeUpdate();
	    }
	    ps.close();
	    }
		catch (ClassNotFoundException | SQLException z){
			
	        out.print("not updated");
			}
	}
}
