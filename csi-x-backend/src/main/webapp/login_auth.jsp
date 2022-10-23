<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");

/* Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/csi_main","root","fcrit@123"); */


if(uname.equals(uname))
{
out.println("LOGGED IN SUCESSFUL!!");

}
else
{
out.println("LOGIN FAIL!!");
}

%>
  <a href="registration.jsp">REGISTRATION FORM</a>