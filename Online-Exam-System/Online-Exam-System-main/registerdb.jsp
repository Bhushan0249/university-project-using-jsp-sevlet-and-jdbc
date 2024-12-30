<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>values inserted successfully</h1>
<%

String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String pass=request.getParameter("pass");
String cpass=request.getParameter("cpass");

	

Connection c=null;
PreparedStatement ps=null;
try{
	
Class.forName("com.mysql.cj.jdbc.Driver");
       c=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","root");
      
      	 ps=c.prepareStatement("insert into register values(?,?,?,?,?)");
      		
      		ps.setString(1,fname);
      	 	ps.setString(2,lname);
      	 	ps.setString(3,email);
      		ps.setString(4,pass);
      		ps.setString(5,cpass);
      		ps.executeUpdate();

}
catch(Exception e){
	
}
      		%>
      		
</body>
</html>