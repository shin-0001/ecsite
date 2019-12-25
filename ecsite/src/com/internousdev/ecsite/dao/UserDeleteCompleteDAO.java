package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;

public class UserDeleteCompleteDAO {

	public int userDelete(String loginId) throws SQLException {

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql = "DELETE FROM login_user_transaction WHERE login_id = ?";

		PreparedStatement ps;
		int result = 0;

		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, loginId);
			result = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return result;
	}
}
