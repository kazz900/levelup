package com.gs.levelup._case.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gs.levelup._case.model.vo.Case;
import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;

@Repository("caseDao")
public class CaseDao {
	@Autowired 
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	private org.mybatis.spring.SqlSessionTemplate sqlSessionTemplateMaria;

	public int insertCase(Case _case) {
		return sqlSessionTemplate.insert("caseMapper.insertCase", _case);
	}

	public Case selectCase(String caseId) {
		return sqlSessionTemplate.selectOne("caseMapper.selectCase", caseId);
	}

	public int updateCase(Case _case) {
		// TODO Auto-generated method stub
		return 0;
	}

	public ArrayList<Case> selectList(Paging paging) {
		List<Case> list = sqlSessionTemplate.selectList("caseMapper.selectList", paging);
		return (ArrayList<Case>) list;
	}

	public int selectListCount() {
		return sqlSessionTemplate.insert("caseMapper.selectListCount");
	}

	public int selectSearchWriterNameCount(Search search) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int selectSearchTitleCount(Search search) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int selectSearchDateCount(Search search) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int selectSearchTypeCount(Search search) {
		// TODO Auto-generated method stub
		return 0;
	}

	public ArrayList<Case> selectSearchWriterName(Search search) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<Case> selectSearchTitle(Search search) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<Case> selectSearchDate(Search search) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<Case> selectSearchType(Search search) {
		// TODO Auto-generated method stub
		return null;
	}
}
