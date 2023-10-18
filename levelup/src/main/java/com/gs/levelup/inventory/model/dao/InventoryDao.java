package com.gs.levelup.inventory.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gs.levelup.charlog.model.vo.CharLog;
import com.gs.levelup.inventory.model.vo.Inventory;

@Repository("inventoryDao")
public class InventoryDao {
	@Autowired
	private org.mybatis.spring.SqlSessionTemplate sqlSessionTemplateMaria;

	public ArrayList<Inventory> selectInventory(int charId) {
		List<Inventory> list = sqlSessionTemplateMaria.selectList("logMapper.selectInventory",charId);
		return (ArrayList<Inventory>)list;
	}

	public ArrayList<Inventory> selectUserInventory(int charId) {
		List<Inventory> list = sqlSessionTemplateMaria.selectList("inventoryMapper.selectUserInventory",charId);
		return (ArrayList<Inventory>)list;
	}

}
