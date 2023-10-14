package com.gs.levelup.inquiry.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;
import com.gs.levelup.inquiry.model.vo.Inquiry;

@Repository("inquiryDao")
public class InquiryDao {
	
	@Autowired  
	private SqlSessionTemplate sqlSessionTemplate;

	public ArrayList<Inquiry> selectList(Paging paging) {
		List<Inquiry> list = sqlSessionTemplate.selectList("inquiryMapper.selectList", paging);
		return (ArrayList<Inquiry>) list;
	}

	public int selectListCount() {
		return sqlSessionTemplate.selectOne("inquiryMapper.selectListCount");
	}
	
	public int insertInquiryAnswer(Inquiry inquiry) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateInquiryAnswer(Inquiry inquiry) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteInquiryAnswer(String inquiryId) {
		// TODO Auto-generated method stub
		return 0;
	}


	public int selectSearchUserIDCount(String keyword) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int selectSearchTypeCount(String keyword) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int selectSearchDateCount(SearchDate date) {
		// TODO Auto-generated method stub
		return 0;
	}

	public ArrayList<Inquiry> selectSearchUserID(Search search) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<Inquiry> selectSearchType(Search search) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<Inquiry> selectSearchDate(Search search) {
		// TODO Auto-generated method stub
		return null;
	}
	


	

}
