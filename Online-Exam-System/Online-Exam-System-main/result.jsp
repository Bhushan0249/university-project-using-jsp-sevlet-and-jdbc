<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Result</h2>
	<%
	try{
		
		PreparedStatement ps=null;
		Connection conn=null;
		ResultSet rs=null;
		
		
	
	
	
	 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", "root");
	
	
	ps=conn.prepareStatement("select * from exam_dts");
	
	int eid=Integer.parseInt(request.getParameter("eid"));
	int ans=Integer.parseInt(request.getParameter("qid"));
	
	rs=ps.executeQuery();
	
	
		// Code to check the answers and display the result
	    // Retrieve or create the session object
	 /*  HttpSession session = request.getSession(true); */
	    
	    // Create an empty array to store user-selected options
	    String[] userOptions = new String[5];
	    
	    // Check if the user has submitted the form
	    if (request.getMethod().equalsIgnoreCase("post")) {
	        // Get the selected options from the form parameters
	        userOptions[0] = request.getParameter("qid");
	        userOptions[1] = request.getParameter("A");
	        userOptions[2] = request.getParameter("B");
	        userOptions[3] = request.getParameter("C");
	        userOptions[4] = request.getParameter("D");
	        
	        // Store the user-selected options in the session
	        session.setAttribute("userOptions", userOptions);
	    } else {
	        // If the user has not submitted the form yet, retrieve the stored options from the session
	        userOptions = (String[]) session.getAttribute("userOptions");
	    }
	%>

	}
	    <% 
	        // Display the result if the user has submitted the form
	        if (request.getMethod().equalsIgnoreCase("post")) {
	            
	         
	        }
	    }
	    
	        
	catch (Exception e){
		
	}
	
	    %>
	</body>
	</html>

				<%-- <%=answer %> --%>






</body>
</html>