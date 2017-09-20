package dear;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;

import java.io.*;

@WebFilter("/servlet1")
public class servlet1 implements Filter {
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}
	

	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		PrintWriter out=response.getWriter();
		String a=request.getParameter("name");
		String b=request.getParameter("password");
		if(a.equals("subbu")&& b.equals("subbu"))
		{
		chain.doFilter(request, response);
	}
		else
		{
			out.print("sorry user");
		}
	}

	
	
	public void destroy() {
		// TODO Auto-generated method stub
	}

}
