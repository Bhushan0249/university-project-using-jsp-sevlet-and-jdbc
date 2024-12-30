<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="log.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<title>Insert title here</title>
</head>
<body>
<%

String u =request.getParameter("email");
String p =request.getParameter("pass");

if(u.equals("patelgaurav454@gmail.com") && p.equals("admin"))
{
	%>
	<%
}
else
{
	%>
<h1>login </h1>
<%
}

%>


<body>
      <form action="database.jsp" method="post">
      <div class="content">
         <div class="text">
            Add Exam
         </div>
         
            <div class="field">
               <input type="number" required name="eid">
               <span class="fas fa-user"></span>
               <label>Exam id</label>
            </div>
            <div class="field">
               <input type="text" required name="ename">
               <span class="fas fa-lock"></span>
               <label>Exam name</label>
            </div>
            <div class="field">
               <input type="text" required name="dets">
               <span class="fas fa-lock"></span>
               <label>Question</label>
            </div>
            
             <div class="field">
               <input type="number" required name="qid">
               <span class="fas fa-user"></span>
               <label>Question id</label>
               
            </div>
            <div class="field">
                <input type="text" required name="A">
                <span class="fas fa-lock"></span>
                <label>A</label>
             </div>
             <div class="field">
                <input type="text" required name="B">
                <span class="fas fa-lock"></span>
                <label>B</label>
             </div>
             <div class="field">
                <input type="text" required name="C">
                <span class="fas fa-lock"></span>
                <label>C</label>
             </div>
             <div class="field">
                <input type="text" required name="D">
                <span class="fas fa-lock"></span>
                <label>D</label>
             </div>
             <div class="field">
                <input type="text" required name="answer">
                <span class="fas fa-lock"></span>
                <label>Answer</label>
             </div>
            <button>Submit</button>
           
            </div>
         </form>
      
   </body>







</body>
</html>