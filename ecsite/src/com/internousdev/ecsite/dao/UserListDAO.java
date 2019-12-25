package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dto.UserInfoDTO;
import com.internousdev.ecsite.util.DBConnector;

public class UserListDAO {

	public ArrayList<UserInfoDTO> getUserInfo() throws SQLException {

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		ArrayList<UserInfoDTO> userInfoDTO = new ArrayList<UserInfoDTO>();

		String sql = "SELECT * FROM login_user_transaction ORDER BY insert_date DESC";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while(rs.next()) {
				UserInfoDTO dto = new UserInfoDTO();
				dto.setId(rs.getString("id"));
				dto.setLoginId(rs.getString("login_id"));
				dto.setLoginPass(rs.getString("login_pass"));
				dto.setUserName(rs.getString("user_name"));
				dto.setInsert_date(rs.getString("insert_date"));
				userInfoDTO.add(dto);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			con.close();
		}

		return userInfoDTO;
	}
}
