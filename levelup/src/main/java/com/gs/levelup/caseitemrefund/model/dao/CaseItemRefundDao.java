package com.gs.levelup.caseitemrefund.model.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.gs.levelup.caseitemrefund.model.vo.CaseItemRefund;
import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;

@Repository("cirDao")
public class CaseItemRefundDao {

	public int insertCaseItemRefundcaseItemRefund() {
		// TODO Auto-generated method stub
		return 0;
	}

	public CaseItemRefund selectCaseItemRefund(String caseItemRefundNo) {
		// TODO Auto-generated method stub
		return null;
	}

	public int updateCaseItemRefund(CaseItemRefund caseItemRefund) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteCaseItemRefund(String caseItemRefundNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	public ArrayList<CaseItemRefund> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<CaseItemRefund> selectList(Paging paging) {
		// TODO Auto-generated method stub
		return null;
	}

	public int selectListCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	public int selectSearchEmployeeIdCount(String keyword) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int selectSearchWriterCount(String keyword) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int selectSearchTitleCount(String keyword) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int selectSearchDateCount(SearchDate searchDate) {
		// TODO Auto-generated method stub
		return 0;
	}

	public ArrayList<CaseItemRefund> selectSearchEmployeeId(Search search) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<CaseItemRefund> selectSearchWriter(Search search) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<CaseItemRefund> selectSearchTitle(Search search) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<CaseItemRefund> selectSearchDate(Search search) {
		// TODO Auto-generated method stub
		return null;
	}

}
