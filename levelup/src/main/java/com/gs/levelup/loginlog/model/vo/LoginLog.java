package com.gs.levelup.loginlog.model.vo;

import java.sql.Date;

public class LoginLog {
	private Date time;
	private String ip;
	private String user;
	private int rcode;
	private String log;
	
	public LoginLog() {}

	public LoginLog(Date time, String ip, String user, int rcode, String log) {
		super();
		this.time = time;
		this.ip = ip;
		this.user = user;
		this.rcode = rcode;
		this.log = log;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public int getRcode() {
		return rcode;
	}

	public void setRcode(int rcode) {
		this.rcode = rcode;
	}

	public String getLog() {
		return log;
	}

	public void setLog(String log) {
		this.log = log;
	}

	@Override
	public String toString() {
		return "LoginLog [time=" + time + ", ip=" + ip + ", user=" + user + ", rcode=" + rcode + ", log=" + log + "]";
	}
	
	
}
