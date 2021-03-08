package getset;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.ArrayList;

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
@WebServlet("/fixorder")
public class fixorder extends HttpServlet {
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
			
    		String no_peo=(String)ses.getAttribute("no_peo");
    		String servers_required=(String)ses.getAttribute("servers_required");
    		String date=(String)ses.getAttribute("date");
    		String company_id=(String)ses.getAttribute("company_id");
    		java.util.Date ate=java.util.Calendar.getInstance().getTime();

    		String cart_id="1"+ate;
    		int total_price = 0;
    		int user_id=Integer.parseInt((String)ses.getAttribute("user_id"));
    		total_price=Integer.parseInt(((String)ses.getAttribute("cart_total")));
             String ss="insert into cater_orders(user_id,company_id,order_status,total_price,workers_assigned,cart_id) values('"+Integer.parseInt((String)ses.getAttribute("user_id"))+"','"+company_id+"','Order Processed','"+total_price+"','"+servers_required+"','"+cart_id+"');";
             String sss="update cater_cart set cart_id='"+cart_id+"' where user_id='"+user_id+"';";
             st.executeUpdate(ss);
             st.executeUpdate(sss);
          // System.out.print(user_name+" "+email_id+" "+" "+mobile_no+" "+address+" "+state+" "+city+" "+pincode+" "+country);

             con.setAutoCommit(true);
             con.close();
             //System.out.println("id is "+"name "+name);
             
             RequestDispatcher view = request.getRequestDispatcher("caterprohtml.jsp");
     	    view.forward(request, response);
     	    
	}
catch(Exception e) {

System.out.print("Exception----------"+e);
}

}}
