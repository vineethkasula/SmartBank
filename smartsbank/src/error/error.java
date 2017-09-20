package error;

import java.io.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/error")
public class error extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public error() {
        super();
        // TODO Auto-generated constructor stub
    }

		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			PrintWriter out=response.getWriter();
       
       out.print("required fields are not filled or mismatching of enter and re-enter passwords");
       out.println("<html>");
       out.println("<head> </head>");
       out.println("<body>");
       String p="NEW-SIGNUP.HTML";
       out.println("<a href="+p+">click here</a>");
       out.println("</body>");
       out.println("</html>");
		
	}

	

}
