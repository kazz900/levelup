package com.gs.levelup.inventory.model.vo;

public class Inventory {
	private int id;
	private int charId;
	private int nameId;
	private int amount;
	private int equip;
	private int identify;
	private int uniqueId;
	
	public Inventory() {}

	public Inventory(int id, int charId, int nameId, int amount, int equip, int identify, int uniqueId) {
		super();
		this.id = id;
		this.charId = charId;
		this.nameId = nameId;
		this.amount = amount;
		this.equip = equip;
		this.identify = identify;
		this.uniqueId = uniqueId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCharId() {
		return charId;
	}

	public void setCharId(int charId) {
		this.charId = charId;
	}

	public int getNameId() {
		return nameId;
	}

	public void setNameId(int nameId) {
		this.nameId = nameId;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getEquip() {
		return equip;
	}

	public void setEquip(int equip) {
		this.equip = equip;
	}

	public int getIdentify() {
		return identify;
	}

	public void setIdentify(int identify) {
		this.identify = identify;
	}

	public int getUniqueId() {
		return uniqueId;
	}

	public void setUniqueId(int uniqueId) {
		this.uniqueId = uniqueId;
	}

	@Override
	public String toString() {
		return "Inventory [id=" + id + ", charId=" + charId + ", nameId=" + nameId + ", amount=" + amount + ", equip="
				+ equip + ", identify=" + identify + ", uniqueId=" + uniqueId + "]";
	}
	
	
}
