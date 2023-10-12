package com.gs.levelup.rodexItems.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gs.levelup.item.model.vo.Item;
import com.gs.levelup.rodexItems.model.dao.RodexItemsDao;
import com.gs.levelup.rodexMail.model.vo.RodexMail;

@Service("rodexItemsService")
public class RodexItemsServiceImpl implements RodexItemsService{
	@Autowired
	private RodexItemsDao rodexItemsDao;
	
	@Override
	public int insertRodexItems(RodexMail rodexMail, Item item) {
		return rodexItemsDao.insertRodexItems(rodexMail, item);
	}

	@Override
	public int deleteRodexItems(RodexMail rodexMail, Item item) {
		return rodexItemsDao.deleteRodexItems(rodexMail, item);
	}

}