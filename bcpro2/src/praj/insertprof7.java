package praj;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import com.mysql.cj.protocol.Resultset;

public class insertprof7 {
	public String insert(String a,String b,String c, String d,String f,String g,int h,String i,String j)
	{
		try {
		    
			
  			
			Class.forName("com.mysql.jdbc.Driver");
             //System.out.print(user_name+" "+email_id+" "+" "+mobile_no+" "+address+" "+state+" "+city+" "+pincode+" "+country);
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bcpro","root","1234");
            Statement st=con.createStatement();
             String s="insert into cater_company(company_name,email_id,password,mobile_no,address,city,pincode,state,country,profile_pic,about) values('"+a+"','"+b+"','"+c+"','"+d+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','https://images.template.net/wp-content/uploads/2017/04/Logo-Design1.jpg','Enter Something');";
             st.executeUpdate(s);
            // System.out.print(user_name+" "+email_id+" "+" "+mobile_no+" "+address+" "+state+" "+city+" "+pincode+" "+country);

             con.setAutoCommit(true);
             con.close();
             //System.out.println("id is "+"name "+name);
             System.out.println("Inserted successfully");
             //System.out.print(user_name+" "+email_id+" "+" "+mobile_no+" "+address+" "+state+" "+city+" "+pincode+" "+country);
             
             return "Inserted";
}


catch(Exception e) {

return"Exception----------"+e;
}

	}
}
