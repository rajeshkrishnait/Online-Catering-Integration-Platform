package getset;

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

@WebServlet("/companypropic")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)

public class companypropic extends HttpServlet {

    public static final String UPLOAD_DIR = "images";
    public String dbFileName = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("applicationPath:");

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession ses=request.getSession();
        int company_id=Integer.parseInt((String)ses.getAttribute("company_id"));
        Part part = request.getPart("proimage");//
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

        /*if you may have more than one files with same name then you can calculate some random characters
         and append that characters in fileName so that it will  make your each image name identical.*/
     //dbFileName = UPLOAD_DIR + File.separator + fileName;
       // part.write(savePath + File.separator);
        //out.println(id+" "+firstName+" "+lastName+" "+fileName+" "+savePath);
        /*
         You need this loop if you submitted more than one file
         for (Part part : request.getParts()) {
         String fileName = extractFileName(part);
         part.write(savePath + File.separator + fileName);
         }*/
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bcpro", "root", "1234");
            PreparedStatement pst = con.prepareStatement("update cater_company set profile_pic=? where company_id=?");

            pst.setString(1, fileName);
            pst.setInt(2, company_id);
            pst.executeUpdate();
            RequestDispatcher view = request.getRequestDispatcher("prof2.jsp");
		    view.forward(request, response);
             
        } catch (Exception e) {
            out.println(e);
        }

    }
    // file name of the upload file is included in content-disposition header like this:
    //form-data; name="dataFile"; filename="PHOTO.JPG"

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