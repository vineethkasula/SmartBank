package dear;

import java.io.IOException;
import java.util.Properties;
import java.util.UUID;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.*;

@WebServlet("/check2")
public class check2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String h=request.getParameter("user");
		String z=request.getParameter("email");
		PrintWriter out=response.getWriter();
		
		try{
            final String fromEmail = "karthik24kasula@gmail.com"; //requires valid gmail id
            final String password = "KASULA56KARTHIK"; // correct password for gmail id
            final String toEmail = z; // can be any email id 
            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com"); //SMTP Host
            props.put("mail.smtp.port", "587"); //TLS Port
            props.put("mail.smtp.auth", "true"); //enable authentication
            props.put("mail.smtp.starttls.enable", "true"); //enable STARTTLS
             UUID uid= UUID.randomUUID();
             String hu=uid.toString();
             HttpSession  sel=request.getSession(true);
             sel.setAttribute("mail",hu);
             sel.setAttribute("userdp",h);
               //create Authenticator object to pass in Session.getInstance argument
            Authenticator auth = new Authenticator() {
                //override the getPasswordAuthentication method
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(fromEmail, password);
                }
            }; 
            Session session = Session.getInstance(props, auth);

            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(fromEmail));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));

            message.setSubject("your new password .....sent from icici");
            message.setText("your password is"+hu);

            Transport.send(message);
            out.println("Mail Sent");
            request.getRequestDispatcher("check2.jsp").forward(request, response);
        }catch(Exception ex){
            out.println("Mail fail");
            out.println(ex);
        
	}

	}

	

}
