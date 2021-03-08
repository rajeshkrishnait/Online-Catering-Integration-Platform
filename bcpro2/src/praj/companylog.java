package praj;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
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
@WebServlet("/companylog")
public class companylog extends HttpServlet {
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
			String mail_id=request.getParameter("mail_id");

			String password=request.getParameter("password");
    		 String sss="select * from cater_company where email_id='"+mail_id+"' and password='"+password+"';";
             ResultSet ar=st.executeQuery(sss);
          // System.out.print(user_name+" "+email_id+" "+" "+mobile_no+" "+address+" "+state+" "+city+" "+pincode+" "+country);
             if(ar.next())
             {
            	 System.out.print(ar.getString(1));
            	ses.setAttribute("company_id", ar.getString(1));
            	 RequestDispatcher view = request.getRequestDispatcher("orders.jsp");
          	    view.forward(request, response);
          	    
             }
             
             con.setAutoCommit(true);
             con.close();
             //System.out.println("id is "+"name "+name);
             
             
	}
catch(Exception e) {

System.out.print("Exception----------"+e);
}

}}
