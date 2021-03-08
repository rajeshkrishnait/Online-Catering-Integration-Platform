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
@WebServlet("/insertreview")
public class insertreview extends HttpServlet {
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
			
    		java.util.Date ate=java.util.Calendar.getInstance().getTime();
    		String review=(String)request.getParameter("comm");
    		String cart_id=(String)ses.getAttribute("cart_id");
    		String star=(String)request.getParameter("star");
    		System.out.print(star);
    		String ss="select user_id,company_id from cater_orders where cart_id='"+cart_id+"';"; 
            //String ss="insert into cater_reviews(user_id,company_id,order_status,total_price,workers_assigned,cart_id) values(1,'"+company_id+"','Order Processed','"+total_price+"','"+servers_required+"','"+cart_id+"');";
              //String sss="update cater_cart set cart_id='"+cart_id+"' where user_id=1;";
            int user_id=0,company_id=0;

            System.out.print(review);
    		ResultSet rs=st.executeQuery(ss);
          // System.out.print(user_name+" "+email_id+" "+" "+mobile_no+" "+address+" "+state+" "+city+" "+pincode+" "+country);
             if(rs.next())
             {
            	 user_id=Integer.parseInt(rs.getString(1));
            	 company_id=Integer.parseInt(rs.getString(2));
             }
             System.out.print(user_id+""+company_id);
           String sss="insert into cater_review values('"+user_id+"','"+company_id+"','"+review+"','"+ate+"','"+star+"','0');";
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
