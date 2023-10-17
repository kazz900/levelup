package com.gs.levelup.inventory.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gs.levelup.inventory.model.dao.InventoryDao;
import com.gs.levelup.inventory.model.vo.Inventory;

@Service("inventoryService")
public class InventoryServiceImpl implements InventoryService{
	@Autowired
	private InventoryDao inventoryDao;

	@Override
	public ArrayList<Inventory> selectInventory(int charId) {
		return inventoryDao.selectInventory(charId);
	}
	

}
