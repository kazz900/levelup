package com.gs.levelup.item.model.vo;

public class Item {
	private int itemId;
	private String itemType;
	private String itemData;
	
	public Item() {}

	public Item(int itemId, String itemType, String itemData) {
		super();
		this.itemId = itemId;
		this.itemType = itemType;
		this.itemData = itemData;
	}

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public String getItemType() {
		return itemType;
	}

	public void setItemType(String itemType) {
		this.itemType = itemType;
	}

	public String getItemData() {
		return itemData;
	}

	public void setItemData(String itemData) {
		this.itemData = itemData;
	}

	@Override
	public String toString() {
		return "Item [itemId=" + itemId + ", itemType=" + itemType + ", itemData=" + itemData + "]";
	}
	
	
	
	
}
