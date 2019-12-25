package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dao.ItemListDeleteCompleteDAO;
import com.internousdev.ecsite.dto.ItemInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemListDeleteCompleteAction extends ActionSupport {

	private ItemListDeleteCompleteDAO itemListDeleteCompleteDAO = new ItemListDeleteCompleteDAO();
	private ArrayList<ItemInfoDTO> itemList = new ArrayList<ItemInfoDTO>();
	private String message;

	public String execute() throws SQLException {

		int res = itemListDeleteCompleteDAO.itemListDelete();

		if(res > 0) {
			itemList = null;
			setMessage("商品情報を正しく削除しました。");
		} else if(res == 0) {
			setMessage("商品情報の削除に失敗しました。");
		}

		return SUCCESS;
	}

	public ArrayList<ItemInfoDTO> getItemList() {
		return this.itemList;
	}

	public void setItemList(ArrayList<ItemInfoDTO> itemList) {
		this.itemList = itemList;
	}

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}