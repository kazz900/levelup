package com.gs.levelup.picklog.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gs.levelup.picklog.model.dao.PickLogDao;
import com.gs.levelup.picklog.model.vo.PickLog;

@Service("pickLogService")
public class PickLogServiceImpl implements PickLogService{
	
	@Autowired
	private PickLogDao pickLogDao;
	
	@Override
	public ArrayList<PickLog> selectPickLog(int charId) {
		return pickLogDao.selectPickLog(charId);
	}
	

}
