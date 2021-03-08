package p;


import java.sql.Connection;
import java.sql.DriverManager;

public class dbconnect {

    private static Connection con;

    /**
     * @return the con
     */
    public static Connection getCon() {
          try
          {
        	  Class.forName("com.mysql.cj.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bcpro","root","1234");
          }
          catch(Exception e)
          {
               System.out.println("connection not established "+e);
          }

        return con;
    }



}
