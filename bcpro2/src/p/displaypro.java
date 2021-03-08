package p;
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

import com.mysql.cj.protocol.Resultset;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import p.insertprof;
@WebServlet("/displaypro")
public class displaypro extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  //
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        //Connection conn = null;
        try {
         Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bcpro","root","1234");
            System.out.println("connected!.....");
            Statement st=con.createStatement();
            Statement st1=con.createStatement();
            String eid = request.getParameter("searchtext");
            String s=eid;
            System.out.println(s);
            
            ArrayList al = null;
            al = new ArrayList();

            ArrayList<ArrayList<String> > pid_list =new ArrayList<ArrayList<String> >();
            String query = "select * from cater_company where company_name='" + eid + "' or city='"+ eid+"' ";
            String query2="select a.company_id,company_name,email_id,password,mobile_no,address,city,pincode,state,country,profile_pic,about from cater_packages a join cater_company ad on a.company_id=ad.company_id where package_name='"+eid+"'";
            System.out.println("query " + query+" "+query2);
            ResultSet rs1=st1.executeQuery(query2);
            ResultSet rs = st.executeQuery(query);
 while (rs1.next()) {
                
                al.add(rs1.getString(1));
                al.add(rs1.getString(2));
                al.add(rs1.getString(3));
                al.add(rs1.getString(4));
                al.add(rs1.getString(5));
                al.add(rs1.getString(6));
                al.add(rs1.getString(7));
                al.add(rs1.getString(8));
                al.add(rs1.getString(9));
                al.add(rs1.getString(10));
                al.add(rs1.getString(11));
                al.add(rs1.getString(12));

                System.out.println("al :: " + al);
                //pid_list.add(al);
            }
            while (rs.next()) {
               
                al.add(rs.getString(1));
                al.add(rs.getString(2));
                al.add(rs.getString(3));
                al.add(rs.getString(4));
                al.add(rs.getString(5));
                al.add(rs.getString(6));
                al.add(rs.getString(7));
                al.add(rs.getString(8));
                al.add(rs.getString(9));
                al.add(rs.getString(10));
                al.add(rs.getString(11));
                al.add(rs.getString(12));

                System.out.println("al :: " + al);
                //pid_list.add(al);
            }
            //System.out.print(pid_list.get(1).get(2));
            request.setAttribute("piList", al);
            request.setAttribute("searchfor",s);
            RequestDispatcher view = request.getRequestDispatcher("function.jsp");
            view.forward(request, response);
            con.close();
            System.out.println("Disconnected!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public String getServletInfo() {
        return "getting records from database through servlet controller";
    }
}// </editor-fold>
