package p;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.io.IOException;
import java.io.PrintWriter;
import p.dbconnect;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import getset.arraylist.*;
import com.mysql.cj.protocol.Resultset;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.*;
@WebServlet("/passtoshoworder")
public class passtoshoworder extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  //
		response.setContentType("text/html");
		  PrintWriter out = response.getWriter();
		String cart_id=request.getParameter("cart_id");
		//Class.forName("com.mysql.jdbc.Driver");
        // System.out.print(user_name+" "+email_id+" "+" "+mobile_no+" "+address+" "+state+" "+city+" "+pincode+" "+country);
         //Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bcpro","root","1234");
        //Statement st=con.createStatement();
		System.out.print(cart_id);
		HttpSession ses=request.getSession();
		ses.setAttribute("cart_id",cart_id);

         //String s="insert into cater_cart values('"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"');";
         //st.executeQuery(s);
        
		
        RequestDispatcher view = request.getRequestDispatcher("showorder.jsp");
	    view.forward(request, response);
	    

		
         } 
}// </editor-fold>
