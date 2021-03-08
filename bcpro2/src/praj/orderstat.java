package praj;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/orderstat")
public class orderstat extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  //
		  response.setContentType("text/html");
		  PrintWriter out = response.getWriter();
          System.out.println("Inserted successfully");

		  String order_id= request.getParameter("order_id");
		  String order_Status = request.getParameter("order_status");
		  try {
		  Class.forName("com.mysql.jdbc.Driver");
          //System.out.print(user_name+" "+email_id+" "+" "+mobile_no+" "+address+" "+state+" "+city+" "+pincode+" "+country);
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bcpro","root","1234");
         Statement st=con.createStatement();
          String s="update cater_orders set order_status='"+order_Status+"' where order_id='"+order_id+"' ";
          st.executeUpdate(s);
         // System.out.print(user_name+" "+email_id+" "+" "+mobile_no+" "+address+" "+state+" "+city+" "+pincode+" "+country);

          con.setAutoCommit(true);
          con.close();
          //System.out.println("id is "+"name "+name);
          //System.out.print(user_name+" "+email_id+" "+" "+mobile_no+" "+address+" "+state+" "+city+" "+pincode+" "+country);
          
		 }
	


	catch(Exception e) {
			System.out.print(e);
	}

	}
}
