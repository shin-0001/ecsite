package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserDetailsDAO;
import com.internousdev.ecsite.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserDetailsAction extends ActionSupport implements SessionAware {

	private String loginId;
	private UserDetailsDAO dao = new UserDetailsDAO();
	private UserInfoDTO dto = new UserInfoDTO();
	private Map<String, Object> session;

	public String execute() throws SQLException {

		dto = dao.userInfo(loginId);

		return SUCCESS;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public UserInfoDTO getDto() {
		return dto;
	}

	public void setDto(UserInfoDTO dto) {
		this.dto = dto;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
