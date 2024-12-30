package university;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import db_con.getCon;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Udelete")
public class Udelete extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();

		String email = req.getParameter("email");
		String pass = req.getParameter("pass");

		try {
			Connection bhu = getCon.con();

			PreparedStatement ps = bhu.prepareStatement("delete from universityinfo where email=? and password=?");

			
//			 insert into universityinfo (Uname,email,password,Address) values
//			 ('BAMU','BAMU@gamil.com','bamu','ch. sambhaji nagar');
	
			
			
			ps.setString(1, email);
			ps.setString(2, pass);

			int num = ps.executeUpdate();

			if (num > 0) {
				RequestDispatcher rd = req.getRequestDispatcher("/Uregister.jsp");
				rd.forward(req, resp);

			} else {
				RequestDispatcher rd = req.getRequestDispatcher("/Udelete.jsp");
				rd.include(req, resp);
				out.println("<h4 style='color:red'>try again..</h4>");

			}

		} catch (Exception e) {
			e.getStackTrace();
			e.getMessage();
		}
	}
}
