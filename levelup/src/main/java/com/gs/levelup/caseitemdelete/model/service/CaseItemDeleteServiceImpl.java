package com.gs.levelup.caseitemdelete.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gs.levelup.caseitemdelete.model.dao.CaseItemDeleteDao;
import com.gs.levelup.caseitemdelete.model.vo.CaseItemDelete;
import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;

@Service("cidService")
public class CaseItemDeleteServiceImpl implements CaseItemDeleteService{
	
	@Autowired
	private CaseItemDeleteDao cidDao;

	@Override
	public int insertCaseItemDelete(CaseItemDelete caseItemDelete) {
		return cidDao.insertCaseItemDelete(caseItemDelete);
	}

	@Override
	public CaseItemDelete selectCaseItemDelete(String caseItemDeleteNo) {
		return cidDao.selectCaseItemDelete(caseItemDeleteNo);
	}

	@Override
	public int updateCaseItemDelete(CaseItemDelete caseItemDelete) {
		return cidDao.updateCaseItemDelete(caseItemDelete);
	}

	@Override
	public int deleteCaseItemDelete(String caseItemDeleteNo) {
		return cidDao.deleteCaseItemDelete(caseItemDeleteNo);
	}

	@Override
	public ArrayList<CaseItemDelete> selectList() {
		return cidDao.selectList();
	}

	@Override
	public ArrayList<CaseItemDelete> selectList(Paging paging) {
		return cidDao.selectList(paging);
	}

	@Override
	public int selectListCount() {
		return cidDao.selectListCount();
	}

	@Override
	public int selectSearchEmployeeIdCount(String keyword) {
		return cidDao.selectSearchEmployeeIdCount(keyword);
	}

	@Override
	public int selectSearchWriterCount(String keyword) {
		return cidDao.selectSearchWriterCount(keyword);
	}

	@Override
	public int selectSearchTitleCount(String keyword) {
		return cidDao.selectSearchTitleCount(keyword);
	}

	@Override
	public int selectSearchDateCount(SearchDate searchDate) {
		return cidDao.selectSearchDateCountsearchDate();
	}

	@Override
	public ArrayList<CaseItemDelete> selectSearchEmployeeId(Search search) {
		return cidDao.selectSearchEmployeeId(search);
	}

	@Override
	public ArrayList<CaseItemDelete> selectSearchWriter(Search search) {
		return cidDao.selectSearchWriter(search);
	}

	@Override
	public ArrayList<CaseItemDelete> selectSearchTitle(Search search) {
		return cidDao.selectSearchTitle(search);
	}

	@Override
	public ArrayList<CaseItemDelete> selectSearchDate(Search search) {
		return cidDao.selectSearchDate(search);
	}

}
