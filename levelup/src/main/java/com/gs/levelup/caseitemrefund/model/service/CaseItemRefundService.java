package com.gs.levelup.caseitemrefund.model.service;

import java.util.ArrayList;

import com.gs.levelup.caseitemrefund.model.vo.CaseItemRefund;
import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;

public interface CaseItemRefundService {
	// CRUD
	public int insertCaseItemRefund(CaseItemRefund caseItemRefund);
	public CaseItemRefund selectCaseItemRefund(String caseItemRefundNo);
	public int updateCaseItemRefund(CaseItemRefund caseItemRefund);
	public int deleteCaseItemRefund(String caseItemRefundNo);
	
	public ArrayList<CaseItemRefund> selectList();  //페이징 처리 없는 전체 목록 조회
	public ArrayList<CaseItemRefund> selectList(Paging paging);  //페이징 처리된 목록 조회
	
	//아이템변경기안 갯수
	public int selectListCount();
	
	//검색 목록 카운트 관련
	public int selectSearchEmployeeIdCount(String keyword);
	public int selectSearchWriterCount(String keyword);
	public int selectSearchTitleCount(String keyword);
	public int selectSearchDateCount(SearchDate searchDate);
	
	//검색 관련
	public ArrayList<CaseItemRefund> selectSearchEmployeeId(Search search);
	public ArrayList<CaseItemRefund> selectSearchWriter(Search search);
	public ArrayList<CaseItemRefund> selectSearchTitle(Search search);
	public ArrayList<CaseItemRefund> selectSearchDate(Search search);
}
