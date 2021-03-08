package praj;
import java.io.InputStream;
import java.sql.Connection;

import java.sql.PreparedStatement;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/displayprof2")
public class displayprof2 extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  //
		  response.setContentType("text/html");
		  PrintWriter out = response.getWriter();
		
		  String a = request.getParameter("fullname");
		  String b = request.getParameter("email");
		  String c = request.getParameter("password");
		  String cc=request.getParameter("password2");
		  String d=request.getParameter("mobileNumber");
			 System.out.print(d);

		   String f = request.getParameter("address");
		  String g = request.getParameter("city");
		  int  h= Integer.parseInt(request.getParameter("pincode"));
		  String i = request.getParameter("state");
		  String j = request.getParameter("country");
		  
		  insertprof2 iv = new insertprof2();
		  if(!(c.equals(cc)))
			 {out.println("<script type=\"text/javascript\">");
			   out.println("alert('User or password incorrect');");
			   out.println("location='login.jsp';");
			   out.println("</script>");
					
			 }
		  else
		  {	  
		  String result = iv.insert(a,b,c,d,f,g,h,i,j);
		  System.out.println(result);
	        RequestDispatcher view = request.getRequestDispatcher("login.jsp");
		    view.forward(request, response);
		  }
		 }

}
