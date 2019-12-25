package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.internousdev.ecsite.util.DBConnector;

public class UserCreateConfirmDAO {

	public boolean LoginIdCheck(String loginUserId) {

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		boolean result = false;

		String sql = "SELECT COUNT(*) AS cnt FROM login_user_transaction where login_id = ?";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, loginUserId);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				if(rs.getInt("cnt") > 0) {
					result = true;
			}
		}
	} catch (Exception e) {
		e.printStackTrace();
	}

		return result;
	}
}
