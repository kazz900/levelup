package com.gs.levelup.caseitemchange.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gs.levelup.caseitemchange.model.vo.CaseItemChange;
import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;

@Repository("cicDao")
public class CaseItemChangeDao {
	
	@Autowired  //root-context.xml 에서 생성한 객체를 자동 연결함
	private SqlSessionTemplate sqlSessionTemplate;

	public int insertCaseItemChange(CaseItemChange caseItemChange) {
		// TODO Auto-generated method stub
		return 0;
	}

	public CaseItemChange selectCaseItemChange(String caseItemChangeNo) {
		// TODO Auto-generated method stub
		return null;
	}

	public int updateCaseItemChange(CaseItemChange caseItemChange) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteCaseItemChange(String caseItemChangeNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	public ArrayList<CaseItemChange> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<CaseItemChange> selectList(Paging paging) {
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

	public ArrayList<CaseItemChange> selectSearchEmployeeId(Search search) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<CaseItemChange> selectSearchWriter(Search search) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<CaseItemChange> selectSearchTitle(Search search) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<CaseItemChange> selectSearchDate(Search search) {
		// TODO Auto-generated method stub
		return null;
	}


}
