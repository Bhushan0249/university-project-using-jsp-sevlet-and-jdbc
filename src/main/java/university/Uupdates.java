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

@WebServlet("/Uupdate")
public class Uupdates extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter out = resp.getWriter();

		String nums = req.getParameter("id");
		int num = Integer.parseInt(nums);

		String name = req.getParameter("Nname");
		String email = req.getParameter("Nemail");
		String pass = req.getParameter("Npass");
		
		String city = req.getParameter("Ncity");
		
		/*
		 * out.println(name); out.println(email); out.println(pass);
		 * out.println(gender); out.println(city); out.println(num);
		 */
		

		try {

			Connection bhu = getCon.con();

			PreparedStatement ps = bhu
					.prepareStatement("update universityinfo set Uname=?,email=?,password=? ,Address=?  where id=?;");

			
//			 insert into universityinfo (Uname,email,password,Address) values
//			 ('BAMU','BAMU@gamil.com','bamu','ch. sambhaji nagar');
			
			
			
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, pass);
			ps.setString(4, city);
			ps.setInt(5, num);

			int a = ps.executeUpdate();

			if (a > 0) {
				RequestDispatcher rd = req.getRequestDispatcher("Uindex.jsp");
				rd.forward(req, resp);
				out.println("Update Successfully");
			} else {
				out.println("try Again");
				RequestDispatcher rd = req.getRequestDispatcher("Uprogile.jsp");
				rd.include(req, resp);

			}

		} catch (Exception e) {

			e.getStackTrace();
			e.getMessage();

		}

	}

}
