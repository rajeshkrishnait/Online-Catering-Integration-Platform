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

import com.mysql.cj.protocol.Resultset;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import p.insertprof;
@WebServlet("/passtocart")
public class passtocart extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  //
		response.setContentType("text/html");
		String company_id=request.getParameter("company_id");
        //request.setAttribute("comany_id", request.getParameter("company_id"));
        HttpSession ses=request.getSession();
    	ses.setAttribute("company_id",company_id ); 
        RequestDispatcher view = request.getRequestDispatcher("caterprohtml.jsp");
        view.forward(request, response);
       
      } 
}// </editor-fold>
