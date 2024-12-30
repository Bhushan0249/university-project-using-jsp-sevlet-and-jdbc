package db_con;

import java.sql.Connection;
import java.sql.DriverManager;

public class getCon {

	public static Connection con() {

		Connection d = null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			d = DriverManager.getConnection("jdbc:mysql://localhost:3306/Mvc_pattern", "root", "bhushan");

		} catch (Exception e) {
			e.printStackTrace();
		}
		return d;
	}

}
