package com.gs.levelup.caseitemdelete.model.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.gs.levelup.caseitemdelete.model.vo.CaseItemDelete;
import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;

@Repository("cidDao")
public class CaseItemDeleteDao {

	public int insertCaseItemDelete(CaseItemDelete caseItemDelete) {
		// TODO Auto-generated method stub
		return 0;
	}

	public CaseItemDelete selectCaseItemDelete(String caseItemDeleteNo) {
		// TODO Auto-generated method stub
		return null;
	}

	public int updateCaseItemDelete(CaseItemDelete caseItemDelete) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteCaseItemDelete(String caseItemDeleteNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	public ArrayList<CaseItemDelete> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<CaseItemDelete> selectList(Paging paging) {
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

	public int selectSearchDateCountsearchDate() {
		// TODO Auto-generated method stub
		return 0;
	}

	public ArrayList<CaseItemDelete> selectSearchEmployeeId(Search search) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<CaseItemDelete> selectSearchWriter(Search search) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<CaseItemDelete> selectSearchTitle(Search search) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<CaseItemDelete> selectSearchDate(Search search) {
		// TODO Auto-generated method stub
		return null;
	}

}
