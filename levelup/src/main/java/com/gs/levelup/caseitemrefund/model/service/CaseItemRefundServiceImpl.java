package com.gs.levelup.caseitemrefund.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gs.levelup.caseitemrefund.model.dao.CaseItemRefundDao;
import com.gs.levelup.caseitemrefund.model.vo.CaseItemRefund;
import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;

@Service("cirService")
public class CaseItemRefundServiceImpl implements CaseItemRefundService{
	
	@Autowired
	private CaseItemRefundDao cirDao;

	@Override
	public int insertCaseItemRefund(CaseItemRefund caseItemRefund) {
		return cirDao.insertCaseItemRefundcaseItemRefund();
	}

	@Override
	public CaseItemRefund selectCaseItemRefund(String caseItemRefundNo) {
		return cirDao.selectCaseItemRefund(caseItemRefundNo);
	}

	@Override
	public int updateCaseItemRefund(CaseItemRefund caseItemRefund) {
		return cirDao.updateCaseItemRefund(caseItemRefund);
	}

	@Override
	public int deleteCaseItemRefund(String caseItemRefundNo) {
		return cirDao.deleteCaseItemRefund(caseItemRefundNo);
	}

	@Override
	public ArrayList<CaseItemRefund> selectList() {
		return cirDao.selectList();
	}

	@Override
	public ArrayList<CaseItemRefund> selectList(Paging paging) {
		return cirDao.selectList(paging);
	}

	@Override
	public int selectListCount() {
		return cirDao.selectListCount();
	}

	@Override
	public int selectSearchEmployeeIdCount(String keyword) {
		return cirDao.selectSearchEmployeeIdCount(keyword);
	}

	@Override
	public int selectSearchWriterCount(String keyword) {
		return cirDao.selectSearchWriterCount(keyword);
	}

	@Override
	public int selectSearchTitleCount(String keyword) {
		return cirDao.selectSearchTitleCount(keyword);
	}

	@Override
	public int selectSearchDateCount(SearchDate searchDate) {
		return cirDao.selectSearchDateCount(searchDate);
	}

	@Override
	public ArrayList<CaseItemRefund> selectSearchEmployeeId(Search search) {
		return cirDao.selectSearchEmployeeId(search);
	}

	@Override
	public ArrayList<CaseItemRefund> selectSearchWriter(Search search) {
		return cirDao.selectSearchWriter(search);
	}

	@Override
	public ArrayList<CaseItemRefund> selectSearchTitle(Search search) {
		return cirDao.selectSearchTitle(search);
	}

	@Override
	public ArrayList<CaseItemRefund> selectSearchDate(Search search) {
		return cirDao.selectSearchDate(search);
	}

}
