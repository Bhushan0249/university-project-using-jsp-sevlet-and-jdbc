package college;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Modul.User;
import db_con.getCon;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Clogin")
public class Clogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter out = resp.getWriter();

		String email = req.getParameter("email");
		String pass = req.getParameter("pass");

		try {

		  Connection bhu = getCon.con();
		  
//		 String query=" insert into collegeinfo (Cname,email,password,Address)"
//		 		+ " values('tulasi college ','tulasicollege@gmail.com','tulasi','beed-431125')";
//		 
		 
			PreparedStatement ps = bhu.prepareStatement("select * from collegeinfo where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, pass);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				User user = new User();

				user.setId(rs.getInt("id"));
				user.setName(rs.getString("Cname"));
				user.setEmail(rs.getString("email"));
				user.setCity(rs.getString("Address"));
				user.setTime(rs.getString("time").toString());


				HttpSession session = req.getSession();
				
				
				session.setAttribute("student_info", user);

				RequestDispatcher rd = req.getRequestDispatcher("/Cprofile.jsp");
				rd.include(req, resp);

			} else {

				RequestDispatcher rd = req.getRequestDispatcher("/Cindex.jsp");
				rd.include(req, resp);
				out.println("<h3 style='color:red'>Email id and password didnt matched</h3>");

			}

		} catch (Exception e) {
			e.getMessage();
		}

	}

}
