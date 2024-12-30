<%@page import="javax.net.ssl.HttpsURLConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exam</title>
</head>
<body>

<h1>Exam</h1>


<form action="myresult.jsp" method="post">


<%
try {
	

			// Code to fetch questions from the database
			// You can use JDBC or any ORM framework to fetch data from the database
			// Here's an example using JDBC
			PreparedStatement ps=null;
			Connection conn=null;
			ResultSet rs=null;
			String que="";
			String A="";
			String B="";
			String C="";
			String D="";
			
			 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", "root");
			
			
			
      		
			
			int eid=Integer.parseInt(request.getParameter("eid"));
			ps=conn.prepareStatement("select * from exam_dts where eid=?");
			ps.setInt(1,eid);

			//HttpSession hs=request.getSession(true);
			System.out.println(eid);
			
			rs=ps.executeQuery();
			
			
			
			// Loop through the result set and display the questions and options
		
				
			rs.next();
			
				if(eid==rs.getInt(1))
						{
					%>
					<input type="hidden" name="x1" value="<%=rs.getInt(9) %>">
					<% 
				 que = rs.getString("dets");
				 A = rs.getString("A");
				 B = rs.getString("B");
				 C = rs.getString("C");
				 D = rs.getString("D");
				 
				 %>
				 
				 
				 	Question:<%=que%><br>
				A<input type="radio" name="a1" value="A"> <%=A%><br>
				B<input type="radio" name="a1" value="B"> <%=B%><br>
				C<input type="radio" name="a1" value="C"> <%=C%><br>
				D<input type="radio" name="a1" value="D"> <%=D%><br>
				
			
				<% 
				            rs.next();
						
							if(eid==rs.getInt(1))
						{
				%>
					<input type="hidden" name="x2" value="<%=rs.getInt(9) %>">
					<% 
				 que = rs.getString("dets");
				 A = rs.getString("A");
				 B = rs.getString("B");
				 C = rs.getString("C");
				 D = rs.getString("D");
				 
				 %>
				 
				 	Question:<%=que%><br>
				A<input type="radio" name="a2" value="A"> <%=A%><br>
				B<input type="radio" name="a2" value="B"> <%=B%><br>
				C<input type="radio" name="a2" value="C"> <%=C%><br>
				D<input type="radio" name="a2" value="D"> <%=D%><br>
				
				
				<% 
				
						}
							rs.next();
				
						
							if(eid==rs.getInt(1))
						{
				%>
					<input type="hidden" name="x3" value="<%=rs.getInt(9) %>">
					<% 
				 que = rs.getString("dets");
				 A = rs.getString("A");
				 B = rs.getString("B");
				 C = rs.getString("C");
				 D = rs.getString("D");
				 
				 %>
				 
				 	Question:<%=que%><br>
				A<input type="radio" name="a3" value="A"> <%=A%><br>
				B<input type="radio" name="a3" value="B"> <%=B%><br>
				C<input type="radio" name="a3" value="C"> <%=C%><br>
				D<input type="radio" name="a3" value="D"> <%=D%><br>
						
						}
						<% 
						     rs.next();
							if(eid==rs.getInt(1))
						{
				%>
					<input type="hidden" name="x4" value="<%=rs.getInt(9) %>">

					<%
				 que = rs.getString("dets");
				 A = rs.getString("A");
				 B = rs.getString("B");
				 C = rs.getString("C");
				 D = rs.getString("D");
				 
				 %>
				 
				 	Question:<%=que%><br>
				A<input type="radio" name="a4" value="A"> <%=A%><br>
				B<input type="radio" name="a4" value="B"> <%=B%><br>
				C<input type="radio" name="a4" value="C"> <%=C%><br>
				D<input type="radio" name="a4" value="D"> <%=D%><br>
				<% 
			
						}
							rs.next();
							if(eid==rs.getInt(1))
						{
					%>
					<input type="hidden" name="x5" value="<%=rs.getInt(9) %>">
					<% 
				 que = rs.getString("dets");
				 A = rs.getString("A");
				 B = rs.getString("B");
				 C = rs.getString("C");
				 D = rs.getString("D");
				 
				 %>
				 
				 	Question:<%=que%><br>
				A<input type="radio" name="a5" value="A"> <%=A%><br>
				B<input type="radio" name="a5" value="B"> <%=B%><br>
				C<input type="radio" name="a5" value="C"> <%=C%><br>
				D<input type="radio" name="a5" value="D"> <%=D%><br>
	
						}
						
				
	}
				<%
					
}
}
}
}

			catch(Exception e){
			      
			      
			      
		      }
			


		%>
		
			<br><br><br>
	<input type="submit">

</form>
</body>
</html>