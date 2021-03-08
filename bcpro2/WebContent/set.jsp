<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String no_peo=request.getParameter("no_peo");
String servers_required=request.getParameter("servers_required");
String date=request.getParameter("date");
//Class.forName("com.mysql.jdbc.Driver");
// System.out.print(user_name+" "+email_id+" "+" "+mobile_no+" "+address+" "+state+" "+city+" "+pincode+" "+country);
 //Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bcpro","root","1234");
//Statement st=con.createStatement();
System.out.println(date+no_peo+servers_required);
HttpSession ses=request.getSession();
ses.setAttribute("date",date);
ses.setAttribute("servers_required",servers_required);
ses.setAttribute("no_peo",no_peo);
%>



