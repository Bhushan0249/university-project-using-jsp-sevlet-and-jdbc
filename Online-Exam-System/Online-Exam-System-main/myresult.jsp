 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
<h1>Result</h1>

<% 
int qid1=Integer.parseInt(request.getParameter("x1"));
String ans1=request.getParameter("a1");
int qid2=Integer.parseInt(request.getParameter("x2"));
String ans2=request.getParameter("a2");
int qid3=Integer.parseInt(request.getParameter("x3"));
String ans3=request.getParameter("a3");
int qid4=Integer.parseInt(request.getParameter("x4"));
String ans4=request.getParameter("a4");
int qid5=Integer.parseInt(request.getParameter("x5"));
String ans5=request.getParameter("a5");
%>
 
	 <%=qid1%>			
	 <%=qid2%>
	 <%=qid3%>
	 <%=qid4%>
	 <%=qid5%>
	 
	

<%
try{
	
	PreparedStatement ps=null;
	Connection conn=null;
	ResultSet rs=null;
	
 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","root");
 %>
 <h1>connected 1</h1>
 <% 

int cnt=0;
ps=conn.prepareStatement("select * from exam_dts where qid=?");
ps.setInt(1,qid1);
rs=ps.executeQuery();
if(rs.next())
{
	
	 String res=rs.getString(8);
	 %>
	 <% 
	 if(res.equals(ans1))
	 {
		 %>
		 <h1> i am in if</h1>
		 <%
		 cnt++;
		 %>
		 <%=res%>
		 <% 
		 
		 
	 }

}
rs.close();
conn.close();
}
catch (Exception e){
	
}


try{
	

PreparedStatement ps=null;
Connection conn=null;
ResultSet rs=null;


conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","root");
%>
<h1>connected 2</h1>
<% 

ps=conn.prepareStatement("select * from exam_dts where qid=?");
ps.setInt(2,qid2);
rs=ps.executeQuery();
if(rs.next())
{
	
	 String res=rs.getString(8);
	 %>
	
	 <% 
	 if(res.equals(ans2))
	 {
		 %>
		 <h1> i am in if</h1>
		 
		 <%=res%>
		 <% 
		 
	 }

}

rs.close();
conn.close();
}
catch (Exception e){
	
}

try {

PreparedStatement ps=null;
Connection conn=null;
ResultSet rs=null;

conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","root");
%>
<h1>connected 3</h1>
<% 


ps=conn.prepareStatement("select * from exam_dts where qid=?");
ps.setInt(3,qid3);
rs=ps.executeQuery();
if(rs.next())
{
	
	 String res=rs.getString(8);
	 %>
	
	 <% 
	 if(res.equals(ans3))
	 {
		 %>
		 <h1> i am in if</h1>
		 <%
		 //cnt++;
		 %>
		 <%=res%>
		 <% 
		 
	 }

}
rs.close();
conn.close();
}
catch (Exception e){
	
}


try {

PreparedStatement ps=null;
Connection conn=null;
ResultSet rs=null;


conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","root");
%>
<h1>connected 4</h1>
<% 
//int cnt=0;
ps=conn.prepareStatement("select * from exam_dts where qid=?");
ps.setInt(4,qid4);
rs=ps.executeQuery();

if(rs.next())
{
	
	 String res=rs.getString(8);
	 %>
	 
	 <% 
	 if(res.equals(ans4))
	 {
		 %>
		 <h1> i am in if</h1>
		 <%
		// cnt++;
		 %>
		 <%=res%>
		 <% 
		 
	 }

}
rs.close();
conn.close();
}
catch (Exception e){
	
}



try {

PreparedStatement ps=null;
Connection conn=null;
ResultSet rs=null;

conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","root");
%>
<h1>connected 5</h1>
<% 
//int cnt=0;
ps=conn.prepareStatement("select * from exam_dts where qid=?");
ps.setInt(5,qid5);
rs=ps.executeQuery();
if(rs.next())
{
	
	 String res=rs.getString(8);
	 %>
	
	
	 <% 
	 if(res.equals(ans5))
	 {
		 %>
		 <h1> i am in if</h1>
		 <%
		// cnt++;
		 %>
		 <%=res%>
		 <% 
		 
	 }

}
rs.close();
conn.close();

}

catch (Exception e){
	
}


%>

<%=ans1%>
<%=ans2%>
<%=ans3%>
<%=ans4%>
<%=ans5%>

</body>
</html>