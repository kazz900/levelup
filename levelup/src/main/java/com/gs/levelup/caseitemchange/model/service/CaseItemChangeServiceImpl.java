package com.gs.levelup.caseitemchange.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gs.levelup.caseitemchange.model.dao.CaseItemChangeDao;
import com.gs.levelup.caseitemchange.model.vo.CaseItemChange;
import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;

@Service("cicService")
public class CaseItemChangeServiceImpl implements CaseItemChangeService{
	
	@Autowired
	private CaseItemChangeDao cicDao;

	@Override
	public int insertCaseItemChange(CaseItemChange caseItemChange) {
		return cicDao.insertCaseItemChange(caseItemChange);
	}

	@Override
	public CaseItemChange selectCaseItemChange(String caseItemChangeNo) {
		return cicDao.selectCaseItemChange(caseItemChangeNo);
	}

	@Override
	public int updateCaseItemChange(CaseItemChange caseItemChange) {
		return cicDao.updateCaseItemChange(caseItemChange);
	}

	@Override
	public int deleteCaseItemChange(String caseItemChangeNo) {
		return cicDao.deleteCaseItemChange(caseItemChangeNo);
	}

	@Override
	public ArrayList<CaseItemChange> selectList() {
		return cicDao.selectList();
	}

	@Override
	public ArrayList<CaseItemChange> selectList(Paging paging) {
		return cicDao.selectList(paging);
	}

	@Override
	public int selectListCount() {
		return cicDao.selectListCount();
	}

	@Override
	public int selectSearchEmployeeIdCount(String keyword) {
		return cicDao.selectSearchEmployeeIdCount(keyword);
	}

	@Override
	public int selectSearchWriterCount(String keyword) {
		return cicDao.selectSearchWriterCount(keyword);
	}

	@Override
	public int selectSearchTitleCount(String keyword) {
		return cicDao.selectSearchTitleCount(keyword);
	}

	@Override
	public int selectSearchDateCount(SearchDate searchDate) {
		return cicDao.selectSearchDateCount(searchDate);
	}

	@Override
	public ArrayList<CaseItemChange> selectSearchEmployeeId(Search search) {
		return cicDao.selectSearchEmployeeId(search);
	}

	@Override
	public ArrayList<CaseItemChange> selectSearchWriter(Search search) {
		return cicDao.selectSearchWriter(search);
	}

	@Override
	public ArrayList<CaseItemChange> selectSearchTitle(Search search) {
		return cicDao.selectSearchTitle(search);
	}

	@Override
	public ArrayList<CaseItemChange> selectSearchDate(Search search) {
		return cicDao.selectSearchDate(search);
	}
}
