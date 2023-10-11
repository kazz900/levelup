package com.gs.levelup.picklog.model.vo;

import java.sql.Date;

public class PickLog {
	private int id;
	private Date time;
	private int charId;
	private String type;
	private int nameId;
	private int account;
	private int uniqueId;
	private String map;
	
	public PickLog() {}

	public PickLog(int id, Date time, int charId, String type, int nameId, int account, int uniqueId, String map) {
		super();
		this.id = id;
		this.time = time;
		this.charId = charId;
		this.type = type;
		this.nameId = nameId;
		this.account = account;
		this.uniqueId = uniqueId;
		this.map = map;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public int getCharId() {
		return charId;
	}

	public void setCharId(int charId) {
		this.charId = charId;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getNameId() {
		return nameId;
	}

	public void setNameId(int nameId) {
		this.nameId = nameId;
	}

	public int getAccount() {
		return account;
	}

	public void setAccount(int account) {
		this.account = account;
	}

	public int getUniqueId() {
		return uniqueId;
	}

	public void setUniqueId(int uniqueId) {
		this.uniqueId = uniqueId;
	}

	public String getMap() {
		return map;
	}

	public void setMap(String map) {
		this.map = map;
	}

	@Override
	public String toString() {
		return "PickLog [id=" + id + ", time=" + time + ", charId=" + charId + ", type=" + type + ", nameId=" + nameId
				+ ", account=" + account + ", uniqueId=" + uniqueId + ", map=" + map + "]";
	}
	
	
}
