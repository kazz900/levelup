package com.gs.levelup.notice.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;
import com.gs.levelup.notice.model.vo.Notice;

@Repository("noticeDao")
public class NoticeDao {
	
	@Autowired	//root-context.xml 에서 생성한 객체를 자동 연결함
	private SqlSessionTemplate sqlSessionTemplate;

	//공지사항 페이지 단위로 목록 조회 : 공지사항 목록보기용
	public ArrayList<Notice> selectList(Paging paging){
		List<Notice> list = sqlSessionTemplate.selectList("noticeMapper.selectList", paging);
		return (ArrayList<Notice>)list;
	}
	
	//공지글번호로 한 개 조회 : 공지사항 상세보기용
	public Notice selectOne(int noticeNo) {
		return sqlSessionTemplate.selectOne("noticeMapper.selectOne", noticeNo);
	}
	
	//새 공지글 등록
	public int insertNotice(Notice notice) {
		return sqlSessionTemplate.insert("noticeMapper.insertNotice", notice);
	}
	
	//공지글 수정
	public int updateNotice(Notice notice) {
		return sqlSessionTemplate.update("noticeMapper.updateNotice", notice);
	}
	
	//공지글 삭제
	public int deleteNotice(int noticeNo) {
		return sqlSessionTemplate.delete("noticeMapper.deleteNotice", noticeNo);
	}
	
	public int selectListCount() {
		return sqlSessionTemplate.selectOne("noticeMapper.getListCount");
	}

	public int selectSearchTitleCount(String keyword) {
		return sqlSessionTemplate.selectOne("noticeMapper.getSearchTitleCount", keyword);
	}

	public int selectSearchContentCount(String keyword) {
		return sqlSessionTemplate.selectOne("noticeMapper.getSearchContentCount", keyword);
	}

	public int selectSearchDateCount(SearchDate date) {
		return sqlSessionTemplate.selectOne("noticeMapper.getSearchDateCount", date);
	}

	public ArrayList<Notice> selectSearchTitle(Search search) {
		List<Notice> list = sqlSessionTemplate.selectList("noticeMapper.selectSearchTitle", search);
		return (ArrayList<Notice>)list;
	}

	public ArrayList<Notice> selectSearchContent(Search search) {
		List<Notice> list = sqlSessionTemplate.selectList("noticeMapper.selectSearchContent", search);
		return (ArrayList<Notice>)list;
	}

	public ArrayList<Notice> selectSearchDate(Search search) {
		List<Notice> list = sqlSessionTemplate.selectList("noticeMapper.selectSearchDate", search);
		return (ArrayList<Notice>)list;
	}

	public int updateReadCount(int noticeNo) {
		return sqlSessionTemplate.update("noticeMapper.addReadCount", noticeNo);
	}
}








