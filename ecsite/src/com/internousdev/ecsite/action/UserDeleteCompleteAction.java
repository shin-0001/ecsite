package com.internousdev.ecsite.action;

import java.sql.SQLException;

import com.internousdev.ecsite.dao.UserDeleteCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserDeleteCompleteAction extends ActionSupport {

	private String loginId;
	private String message;
	UserDeleteCompleteDAO dao = new UserDeleteCompleteDAO();

	public String execute() throws SQLException {

		int res = dao.userDelete(loginId);

		if(res > 0) {
			setMessage("ユーザー情報を正しく削除しました。");
		} else {
			setMessage("ユーザー情報の削除に失敗しました。");
		}

		return SUCCESS;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
