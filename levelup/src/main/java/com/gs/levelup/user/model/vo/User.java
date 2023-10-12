package com.gs.levelup.user.model.vo;

import java.sql.Date;

public class User {
	private int accountId;
	private String userId;
	private String userPass;
	private String email;
	private int logincount;
	private Date lastlogin;
	
	public User() {}

	public User(int accountId, String userId, String userPass, String email, int logincount, Date lastlogin) {
		super();
		this.accountId = accountId;
		this.userId = userId;
		this.userPass = userPass;
		this.email = email;
		this.logincount = logincount;
		this.lastlogin = lastlogin;
	}

	public int getAccountId() {
		return accountId;
	}

	public void setAccountId(int accountId) {
		this.accountId = accountId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getLogincount() {
		return logincount;
	}

	public void setLogincount(int logincount) {
		this.logincount = logincount;
	}

	public Date getLastlogin() {
		return lastlogin;
	}

	public void setLastlogin(Date lastlogin) {
		this.lastlogin = lastlogin;
	}

	@Override
	public String toString() {
		return "User [accountId=" + accountId + ", userId=" + userId + ", userPass=" + userPass + ", email=" + email
				+ ", logincount=" + logincount + ", lastlogin=" + lastlogin + "]";
	}
	
	
}
