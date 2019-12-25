package com.internousdev.ecsite.action;

import java.sql.SQLException;

import com.internousdev.ecsite.dao.ItemDeleteCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemDeleteCompleteAction extends ActionSupport {

	private String id;
	private String message;
	ItemDeleteCompleteDAO dao = new ItemDeleteCompleteDAO();

	public String execute() throws SQLException {

		int res = dao.itemDelete(id);

		if(res > 0) {
			setMessage("商品情報を正しく削除しました。");
		} else {
			setMessage("商品情報の削除に失敗しました。");
		}

		return SUCCESS;

	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
