package com.gs.levelup.picklog.model.service;

import java.util.ArrayList;

import com.gs.levelup.picklog.model.vo.PickLog;

public interface PickLogService {
	public ArrayList<PickLog> selectPickLog(int accountId, int charId);
}