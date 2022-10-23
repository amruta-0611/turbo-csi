<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<% 
 String url="jdbc:mysql://localhost:3306/csi_main";
String username="root";
String password="fcrit@123"; 
Class.forName("com.mysql.jdbc.Driver");
String sql="select * from stu_info;";
Connection conn=DriverManager.getConnection(url,username,password);
Statement st=conn.createStatement();
ResultSet rs = st.executeQuery(sql);
rs.next();


%>
Rollno:<%out.println(rs.getString(1)); %><br>
name:<%out.println(rs.getString(2)); %><br>


</body>
</html>