<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%
  try{            
    String username=session.getAttribute("username").toString();
    String password= session.getAttribute("password").toString();
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/csi_main","root","fcrit@123");
   Statement st=conn.createStatement();
   String sql="select type from stu_login where ID='"+username+"' and password='"+password+"'";
   ResultSet rs = st.executeQuery(sql);
   

if(rs.next()){
	if(rs.getString(1).equals("admin")) 
		session.setAttribute("display","1");
	
	else
		out.println("sorry you r invalid");
    
}
  }
    catch (Exception e) {
        out.println("Something went wrong.");
  
    }
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <button class="btn" id="1" >
  <a href="admin_view.jsp">View
</a>
</button>
<button><a href="logio.jsp">Back to login</a></button>
</body>
</html>