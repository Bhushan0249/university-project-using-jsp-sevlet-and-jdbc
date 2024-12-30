package student;

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

@WebServlet("/Supdate")
public class Supdates extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter out = resp.getWriter();

		String nums = req.getParameter("id");
		int num = Integer.parseInt(nums);

		String name = req.getParameter("Nname");
		String email = req.getParameter("Nemail");
		String pass = req.getParameter("Npass");
		String gender = req.getParameter("Ngender");
		String city = req.getParameter("Ncity");
		
		/*
		 * out.println(name); out.println(email); out.println(pass);
		 * out.println(gender); out.println(city); out.println(num);
		 */
		

		try {

			Connection bhu = getCon.con();

			PreparedStatement ps = bhu
					.prepareStatement("update studentinfo set name=?,email=?,password=? ,gender=?,city=?  where id=?;");

			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, pass);
			ps.setString(4, gender);
			ps.setString(5, city);
			ps.setInt(6, num);

			int a = ps.executeUpdate();

			if (a > 0) {
				RequestDispatcher rd = req.getRequestDispatcher("Sindex.jsp");
				rd.forward(req, resp);
				out.println("Update Successfully");
			} else {
				out.println("try Again");
				RequestDispatcher rd = req.getRequestDispatcher("Sprogile.jsp");
				rd.include(req, resp);

			}

		} catch (Exception e) {

			e.getStackTrace();
			e.getMessage();

		}

	}

}
