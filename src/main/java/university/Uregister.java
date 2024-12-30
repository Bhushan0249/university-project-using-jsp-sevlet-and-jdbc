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

@WebServlet("/Uregister")
public class Uregister extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter out = resp.getWriter();

		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String pass = req.getParameter("pass");
		String Address = req.getParameter("city");

		try {

			Connection bhu = getCon.con();

			PreparedStatement ps = bhu
					.prepareStatement("insert into universityinfo(Uname,email,password,Address) values(?,?,?,?)");

//			 insert into universityinfo (Uname,email,password,Address) values
//			 ('BAMU','BAMU@gamil.com','bamu','ch. sambhaji nagar');

			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, pass);
			ps.setString(4, Address);

			int num = ps.executeUpdate();

			if (num > 0) {

				RequestDispatcher rd = req.getRequestDispatcher("/Uindex.jsp");
				rd.forward(req, resp);

			} else {

				RequestDispatcher rd = req.getRequestDispatcher("/Uregister.jsp");
				rd.forward(req, resp);
				out.println("somting rong please try again....");

			}

		} catch (Exception e) {
			e.getStackTrace();

		}

	}

}
