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

@WebServlet("/displayprof7")
public class displayprof7 extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  //
		  response.setContentType("text/html");
		  PrintWriter out = response.getWriter();
		
		  String a = request.getParameter("fullnam");
		  String b = request.getParameter("emai");
		  String c = request.getParameter("passwor");
		  String d=request.getParameter("mobileNumbe");
			 System.out.print(d);

		 
		  String f = request.getParameter("addres");
		  String g = request.getParameter("cit");
		  int  h= Integer.parseInt(request.getParameter("pincod"));
		  String i = request.getParameter("stat");
		  String j = request.getParameter("countr");
		  
		  insertprof7 iv = new insertprof7();
		  String result = iv.insert(a,b,c,d,f,g,h,i,j);
		  System.out.println(result);
	        RequestDispatcher view = request.getRequestDispatcher("login2.jsp");
		    view.forward(request, response);

		 }

}
