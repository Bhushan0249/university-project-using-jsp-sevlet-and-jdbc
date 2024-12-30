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

@WebServlet("/Sregister")
public class Sregister extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter out = resp.getWriter();

		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String pass = req.getParameter("pass");
		String gender = req.getParameter("gender");
		String city = req.getParameter("city");

		try {

			Connection bhu = getCon.con();

			PreparedStatement ps = bhu.prepareStatement("insert into studentinfo(name,email,password,gender,city) values(?,?,?,?,?)");

			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, pass);
			ps.setString(4, gender);
			ps.setString(5, city);

			int num = ps.executeUpdate();

			if (num > 0) {

				
				 RequestDispatcher rd= req.getRequestDispatcher("/Sindex.jsp");
				 rd.forward(req,resp);
				 

			} else {

				RequestDispatcher rd = req.getRequestDispatcher("/Sregister.jsp");
				rd.forward(req, resp);
				out.println("somting rong please try again....");

			}

		} catch (Exception e) {
			e.getStackTrace();

		}

	}

}
