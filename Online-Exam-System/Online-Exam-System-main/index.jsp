<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%-- 
<h2>Online MCQ Exam</h2>
	<form action="result.jsp" method="post">
		<%
			// Code to fetch questions from the database
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam_db", "root", "password");
			Connection c=null;
			PreparedStatement ps=null;
			ResultStatement rs=null; 
			
			try{
				
			
			String sql = "INSERT INTO exam_dets (eid, ename, desc, A,B,C,D, answer) VALUES (?,?,?,?,?,?,?,?)";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, eid);
			stmt.setString(2, ename);
			stmt.setString(3, desc);
			stmt.setString(4, A);
			stmt.setString(5, B);
			stmt.setString(6, C);
			stmt.setString(7, D);
			stmt.setString(8, answer);
			
			
			//stmt.executeUpdate();
			
						
			ps=c.prepareStatement("select * from exam_dts (?,?,?,?,?,?,?,?)");
			
			
			
			// Loop through the result set and display the questions and options
			while (rs.next()) {
				int eid = rs.getInt("eid");
				String questionText = rs.getString("dets");
				String A = rs.getString("A");
				String B = rs.getString("B");
				String C = rs.getString("C");
				String D = rs.getString("D");
		%>
				<p><%=dets%></p>
				<input type="radio" name="A" value="A"> <%=A%><br>
				<input type="radio" name="B" value="B"> <%=B%><br>
				<input type="radio" name="C" value="C"> <%=C%><br>
				<input type="radio" name="D" value="D"> <%=D%><br>
		<%
			}
		}
		
		catch(Exception ae)
		{
			System.out.println(ae);
			
		}
			
		%> --%>
		<input type="submit" value="Submit">
	</form>

</body>
</html>