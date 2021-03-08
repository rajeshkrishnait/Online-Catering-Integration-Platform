package praj;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import com.mysql.cj.protocol.Resultset;
public class insertprof5{
	public String insert(int m,String a)
	{
		try {
		    
			
  			
			Class.forName("com.mysql.jdbc.Driver");
             //System.out.print(user_name+" "+email_id+" "+" "+mobile_no+" "+address+" "+state+" "+city+" "+pincode+" "+country);
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bcpro","root","1234");
            Statement st=con.createStatement();
             String s="delete from cater_workers where worker_id='"+m+"';";
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
