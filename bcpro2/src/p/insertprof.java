package p;
import p.dbconnect;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
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

import javax.servlet.http.HttpSession;

import com.mysql.cj.protocol.Resultset;

public class insertprof {
	public String insert(String user_name,String email_id,String mobile_no,String address,String state,String city,int pincode,String country,String user_id )
	{
		try {
		    
			//System.out.print(user_name+" "+email_id+" "+" "+mobile_no+" "+address+" "+state+" "+city+" "+pincode+" "+country);
  			
			Class.forName("com.mysql.jdbc.Driver");
            // System.out.print(user_name+" "+email_id+" "+" "+mobile_no+" "+address+" "+state+" "+city+" "+pincode+" "+country);
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bcpro","root","1234");
            Statement st=con.createStatement();
    		String s="update cater_user set user_name='"+user_name+"',email_id='"+email_id+"',mobile_no='"+mobile_no+"',address='"+address+"',state='"+state+"',city='"+city+"',pincode='"+pincode+"',country='"+country+"' where user_id='"+Integer.parseInt(user_id)+"';";
             st.executeUpdate(s);
            // System.out.print(user_name+" "+email_id+" "+" "+mobile_no+" "+address+" "+state+" "+city+" "+pincode+" "+country);

             con.setAutoCommit(true);
             con.close();
             //System.out.println("id is "+"name "+name);
             System.out.println("Inserted successfully");
             System.out.print(user_name+" "+email_id+" "+" "+mobile_no+" "+address+" "+state+" "+city+" "+pincode+" "+country);
             
             return "Inserted";
}


catch(Exception e) {

return"Exception----------"+e;
}

	}
}
