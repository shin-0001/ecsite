package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dao.UserListDeleteCompleteDAO;
import com.internousdev.ecsite.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserListDeleteCompleteAction extends ActionSupport {

	private UserListDeleteCompleteDAO userListDeleteCompleteDAO = new UserListDeleteCompleteDAO();
	private ArrayList<UserInfoDTO> userList = new ArrayList<UserInfoDTO>();
	private String message;

	public String execute() throws SQLException {

		int res = userListDeleteCompleteDAO.userListDelete();

		if(res > 0) {
			userList = null;
			setMessage("商品情報を正しく削除しました。");
		} else if(res == 0) {
			setMessage("商品情報の削除に失敗しました。");
		}

		return SUCCESS;
	}

	public ArrayList<UserInfoDTO> getUserList() {
		return this.userList;
	}

	public void setUserList(ArrayList<UserInfoDTO> userList) {
		this.userList = userList;
	}

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
