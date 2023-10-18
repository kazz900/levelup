package com.gs.levelup.loginlog.model.vo;

import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;

public class LoginLog  implements java.io.Serializable {
	private static final long serialVersionUID = -3670358373930511132L;

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	private ZonedDateTime time;
	private String ip;
	private String user;
	private int rcode;
	private String log;
	
	public LoginLog() {}

	public LoginLog(ZonedDateTime time, String ip, String user, int rcode, String log) {
		super();
		this.time = time;
		this.ip = ip;
		this.user = user;
		this.rcode = rcode;
		this.log = log;
	}

	public ZonedDateTime getTime() {
		return time;
	}

	public void setTime(ZonedDateTime time) {
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
		return "로그인이력 [로그인시간: " + time.format(DateTimeFormatter.ofPattern("yyyy/MM/dd/ HH:mm:ss z")) + "|  ip : " + ip + " | user ID: " + user + "| log: " + log + "]";
	}
	
	
}
