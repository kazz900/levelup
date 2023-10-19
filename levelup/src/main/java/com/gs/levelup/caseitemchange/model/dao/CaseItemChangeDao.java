package com.gs.levelup.caseitemchange.model.dao;

import java.util.ArrayList;
import java.util.List;

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
		return sqlSessionTemplate.insert("cicMapper.insertCaseItemChange", caseItemChange);
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

	//결재자 조회용
	public ArrayList<CaseItemChange> selectEmpList(String employeeId) {
		List<CaseItemChange> list = sqlSessionTemplate.selectList("cicMapper.selectEmpList", employeeId);
		return (ArrayList<CaseItemChange>)list;
	}
	
	public ArrayList<CaseItemChange> selectList() {
		List<CaseItemChange> list = sqlSessionTemplate.selectList("cicMapper.selectAllCICList");
		return (ArrayList<CaseItemChange>)list;
	}

	public ArrayList<CaseItemChange> selectList(Paging paging) {
		// TODO Auto-generated method stub
		return null;
	}

	public int selectListCount() {
		return sqlSessionTemplate.selectOne("cicMapper.selectAllCICListCount");
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
