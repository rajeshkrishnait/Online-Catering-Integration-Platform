package praj;


import java.io.InputStream;
import java.sql.Connection;

import java.sql.PreparedStatement;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
@WebServlet("/displayprof6")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10, // 10MB
maxRequestSize = 1024 * 1024 * 50)
public class displayprof6 extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  //
		  response.setContentType("text/html");
		  PrintWriter out = response.getWriter();
		
		  Part part = request.getPart("workerim");//
	        String fileName = extractFileName(part);//file name

	        /**
	         * *** Get The Absolute Path Of The Web Application ****
	         */
	        String applicationPath = getServletContext().getRealPath("");
	        //String uploadPath = applicationPath + File.separator + UPLOAD_DIR;
	        System.out.println("applicationPath:" + applicationPath);
	       
	        String savePath = "D:\\Bootcamp java\\projects\\bcpro2\\WebContent"+File.separator+ fileName;
	        System.out.println("savePath: " + savePath);
	       // String sRootPath = new File(savePath).getAbsolutePath();
	        
	        //System.out.println("sRootPath: " + sRootPath);
	        File fileSaveDir = new File(savePath);
	        part.write(savePath + File.separator);
		  HttpSession ses=request.getSession();
		  int  m= Integer.parseInt((String)ses.getAttribute("company_id"));
		  String a = request.getParameter("wn");
		  String s = request.getParameter("st");
		  String design=request.getParameter("Designation");
		  System.out.println(m+""+a+""+s);

		  try {
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bcpro", "root", "1234");
	            String sss="insert into cater_workers(company_id,worker_name,status,Designation,picture) values('"+m+"','"+a+"','"+s+"','"+design+"','"+fileName+"');";
	            Statement st=con.createStatement();

	            st.executeUpdate(sss);
	            
	            RequestDispatcher view = request.getRequestDispatcher("server.jsp");
			    view.forward(request, response);

	             
	        } catch (Exception e) {
	            out.println(e);
	        }
		  
		  
		  
		 }
	

	 private String extractFileName(Part part) {//This method will print the file name.
	        String contentDisp = part.getHeader("content-disposition");
	        String[] items = contentDisp.split(";");
	        for (String s : items) {
	            if (s.trim().startsWith("filename")) {
	                return s.substring(s.indexOf("=") + 2, s.length() - 1);
	            }
	        }
	        return "";
	    }
	

}
