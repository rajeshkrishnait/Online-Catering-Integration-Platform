package getset;

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
@WebServlet("/cartinsert")
public class cartinsert extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  //
		try
		{
		response.setContentType("text/html");
		  PrintWriter out = response.getWriter();
			HttpSession ses=request.getSession();
			Class.forName("com.mysql.jdbc.Driver");
			 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bcpro","root","1234");
		       
	         Statement st=con.createStatement();
	         
	 		String item_id=request.getParameter("item_id");		
	 		String item_quan=request.getParameter("item_quan");


	       String find="select item_name,price from cater_items where item_id='"+item_id+"'";
	       ResultSet finding=st.executeQuery(find);

			String item_name="";
			String item_price="";
	       if(finding.next())
	       {
	    	   item_name=finding.getString(1);
	    	   item_price=finding.getString(2);
	       }
		
		String no_peo=(String)ses.getAttribute("no_peo");
		String servers_required=(String)ses.getAttribute("servers_required");
		String date=(String)ses.getAttribute("date");
		String company_id=(String)ses.getAttribute("company_id");
		// Date ate=java.util.Calendar.getInstance();

	        String cart_id=(String)ses.getAttribute("user_id");
            System.out.println(item_quan+item_id+item_price+item_name);

         //System.out.print(user_name+" "+email_id+" "+" "+mobile_no+" "+address+" "+state+" "+city+" "+pincode+" "+country);
         
         String s="insert into cater_cart values('"+cart_id+"','"+item_id+"','"+item_name+"','"+item_quan+"','"+Integer.parseInt((String)(ses.getAttribute("user_id")))+"','"+company_id+"','"+Integer.parseInt(item_quan)*Integer.parseInt(item_price)+"','"+servers_required+"','"+date+"');";

        //String cart_id=
         st.executeUpdate(s);
        
		
	       

		
         }
		catch(Exception e)
		{
			System.out.print(e);
		}
}// </editor-fold>
}