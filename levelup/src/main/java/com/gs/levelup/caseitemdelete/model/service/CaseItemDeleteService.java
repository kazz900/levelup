package com.gs.levelup.caseitemdelete.model.service;

import java.util.ArrayList;

import com.gs.levelup.caseitemdelete.model.vo.CaseItemDelete;
import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;

public interface CaseItemDeleteService {
	// CRUD
	public int insertCaseItemDelete(CaseItemDelete caseItemDelete);
	public CaseItemDelete selectCaseItemDelete(String caseItemDeleteNo);
	public int updateCaseItemDelete(CaseItemDelete caseItemDelete);
	public int deleteCaseItemDelete(String caseItemDeleteNo);
	
	public ArrayList<CaseItemDelete> selectList();  //페이징 처리 없는 전체 목록 조회
	public ArrayList<CaseItemDelete> selectList(Paging paging);  //페이징 처리된 목록 조회
	
	//아이템변경기안 갯수
	public int selectListCount();
	
	//검색 목록 카운트 관련
	public int selectSearchEmployeeIdCount(String keyword);
	public int selectSearchWriterCount(String keyword);
	public int selectSearchTitleCount(String keyword);
	public int selectSearchDateCount(SearchDate searchDate);
	
	//검색 관련
	public ArrayList<CaseItemDelete> selectSearchEmployeeId(Search search);
	public ArrayList<CaseItemDelete> selectSearchWriter(Search search);
	public ArrayList<CaseItemDelete> selectSearchTitle(Search search);
	public ArrayList<CaseItemDelete> selectSearchDate(Search search);
}
