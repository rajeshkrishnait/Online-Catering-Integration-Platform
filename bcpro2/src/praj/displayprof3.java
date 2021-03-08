package praj;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;




import com.mysql.cj.protocol.Resultset;
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

@WebServlet("/displayprof3")
public class displayprof3 extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  //
		  response.setContentType("text/html");
		  PrintWriter out = response.getWriter();
		
		  int  m= Integer.parseInt(request.getParameter("cii"));
		  String a = request.getParameter("wni");
		 
		  
		  
		  insertprof3 iv = new insertprof3();
		  String result = iv.insert(m,a);
		  System.out.println(result);
		  RequestDispatcher view = request.getRequestDispatcher("item.jsp");
		    view.forward(request, response);

		 }

}
