package p;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import getset.arraylist;
import p.insertprof;
import sun.util.calendar.BaseCalendar.Date;
@WebServlet("/cancellation")
public class cancellation extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  //
	
		
try {
		    
			//System.out.print(user_name+" "+email_id+" "+" "+mobile_no+" "+address+" "+state+" "+city+" "+pincode+" "+country);
  			
			Class.forName("com.mysql.jdbc.Driver");
			System.out.print("afs");
            // System.out.print(user_name+" "+email_id+" "+" "+mobile_no+" "+address+" "+state+" "+city+" "+pincode+" "+country);
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bcpro","root","1234");
            Statement st=con.createStatement();

    		
			HttpSession ses=request.getSession();
			
    		
    		String cart_id=(String)ses.getAttribute("cart_id");
    		String ss="select user_id,company_id from cater_orders where cart_id='"+cart_id+"';"; 
            //String ss="insert into cater_reviews(user_id,company_id,order_status,total_price,workers_assigned,cart_id) values(1,'"+company_id+"','Order Processed','"+total_price+"','"+servers_required+"','"+cart_id+"');";
              //String sss="update cater_cart set cart_id='"+cart_id+"' where user_id=1;";
          
             //System.out.print(user_id+""+company_id);
           String sss="update cater_orders set order_status='cancellation requested' where cart_id='"+cart_id+"'";
             st.executeUpdate(sss);
             con.setAutoCommit(true);
             con.close();
             //System.out.println("id is "+"name "+name);
             
             RequestDispatcher view = request.getRequestDispatcher("showorder.jsp");
     	    view.forward(request, response);
     	    
	}
catch(Exception e) {

System.out.print("Exception----------"+e);
}

}}
