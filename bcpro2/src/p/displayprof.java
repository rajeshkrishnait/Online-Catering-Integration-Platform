package p;
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
import javax.servlet.http.HttpSession;

import p.insertprof;
@WebServlet("/displayprof")
public class displayprof extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  //
		  response.setContentType("text/html");
		  PrintWriter out = response.getWriter();
		  String user_name = request.getParameter("input-username");
		  String  email_id= request.getParameter("input-email");
		  String  mobile_no= request.getParameter("input-mobile");
		  String address = request.getParameter("input-address");
		  String state = request.getParameter("input-state");
		  String  city= request.getParameter("input-city");
		  int  pincode= Integer.parseInt(request.getParameter("input-pincode"));
		  String country = request.getParameter("input-country");
		  HttpSession ses=request.getSession();
		  String user_id=(String)ses.getAttribute("user_id");
		  
		  
		  insertprof iv = new insertprof();
		  String result = iv.insert(user_name,email_id,mobile_no,address,state,city,pincode,country,user_id);
		  System.out.println(result);
		  RequestDispatcher view = request.getRequestDispatcher("prof.jsp");
		    view.forward(request, response);

		 }

}
