package com.gs.levelup._case.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gs.levelup._case.model.dao.CaseDao;
import com.gs.levelup._case.model.vo.Case;
import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;

@Service("caseService")
public class CaseServiceImpl implements CaseService{
	
	@Autowired
	private CaseDao caseDao;

	@Override
	public int insertCase(Case _case) {
		return caseDao.insertCase(_case);
	}
	@Override
	public Case selectCase(String caseId) {
		return caseDao.selectCase(caseId);
	}
	@Override
	public int updateCase(Case _case) {
		return caseDao.updateCase(_case);
	}
	@Override
	public ArrayList<Case> selectList(Paging paging) {
		return caseDao.selectList(paging);
	}
	@Override
	public int selectListCount() {
		return caseDao.selectListCount();
	}
	@Override
	public int selectSearchWriterNameCount(Search search) {
		return caseDao.selectSearchWriterNameCount(search);
	}
	@Override
	public int selectSearchTitleCount(Search search) {
		return caseDao.selectSearchTitleCount(search);
	}
	@Override
	public int selectSearchDateCount(Search search) {
		return caseDao.selectSearchDateCount(search);
	}
	@Override
	public int selectSearchTypeCount(Search search) {
		return caseDao.selectSearchTypeCount(search);
	}
	@Override
	public ArrayList<Case> selectSearchWriterName(Search search) {
		return caseDao.selectSearchWriterName(search);
	}
	@Override
	public ArrayList<Case> selectSearchTitle(Search search) {
		return caseDao.selectSearchTitle(search);
	}
	@Override
	public ArrayList<Case> selectSearchDate(Search search) {
		return caseDao.selectSearchDate(search);
	}
	@Override
	public ArrayList<Case> selectSearchType(Search search) {
		return caseDao.selectSearchType(search);
	}

}
