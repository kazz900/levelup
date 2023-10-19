package com.gs.levelup.caseitemchange.model.service;

import java.util.ArrayList;

import com.gs.levelup.caseitemchange.model.vo.CaseItemChange;
import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;
import com.gs.levelup.employee.model.vo.Employee;

public interface CaseItemChangeService {
	// CRUD
	public int insertCaseItemChange(CaseItemChange caseItemChange);
	public CaseItemChange selectCaseItemChange(String caseItemChangeNo);
	public int updateCaseItemChange(CaseItemChange caseItemChange);
	public int deleteCaseItemChange(String caseItemChangeNo);
	
	public ArrayList<CaseItemChange> selectEmpList(String employeeId); //결재자 조회용
	public ArrayList<CaseItemChange> selectList();  //페이징 처리 없는 전체 목록 조회
	public ArrayList<CaseItemChange> selectList(Paging paging);  //페이징 처리된 목록 조회
	
	//아이템변경기안 갯수
	public int selectListCount();
	
	//검색 목록 카운트 관련
	public int selectSearchEmployeeIdCount(String keyword);
	public int selectSearchWriterCount(String keyword);
	public int selectSearchTitleCount(String keyword);
	public int selectSearchDateCount(SearchDate searchDate);
	
	//검색 관련
	public ArrayList<CaseItemChange> selectSearchEmployeeId(Search search);
	public ArrayList<CaseItemChange> selectSearchWriter(Search search);
	public ArrayList<CaseItemChange> selectSearchTitle(Search search);
	public ArrayList<CaseItemChange> selectSearchDate(Search search);
}
