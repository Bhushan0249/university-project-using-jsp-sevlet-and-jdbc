<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> Values inserted successfully</h1>
<%
int eid=Integer.parseInt(request.getParameter("eid"));
String ename=request.getParameter("ename");
String que=request.getParameter("dets");
String A=request.getParameter("A");
String B=request.getParameter("B");
String C=request.getParameter("C");
String D=request.getParameter("D");
String Answer=request.getParameter("answer");
int qid=Integer.parseInt(request.getParameter("qid"));

Connection c=null;
PreparedStatement ps=null;
try{
	
Class.forName("com.mysql.cj.jdbc.Driver");
       c=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","root");
      
      	 ps=c.prepareStatement("insert into exam_dts values(?,?,?,?,?,?,?,?,?)");
      		
      		ps.setInt(1,eid);
      	 	ps.setString(2,ename);
      	 	ps.setString(3,que);
      		ps.setString(4,A);
      		ps.setString(5,B);
      		ps.setString(6,C);
      		ps.setString(7,D);
      		ps.setString(8,Answer);
      		ps.setInt(9,qid);
      		ps.executeUpdate();
      		
      		
      		
      }catch(Exception e){
      
      
      
      }

%> 







</body>
</html>