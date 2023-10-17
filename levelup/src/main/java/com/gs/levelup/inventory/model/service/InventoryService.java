package com.gs.levelup.inventory.model.service;

import java.util.ArrayList;

import com.gs.levelup.inventory.model.vo.Inventory;

public interface InventoryService {
	public ArrayList<Inventory> selectInventory(int charId);
}
