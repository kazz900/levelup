package com.gs.levelup.schedule.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gs.levelup.common.Paging;
import com.gs.levelup.notice.model.vo.Notice;
import com.gs.levelup.schedule.model.vo.Schedule;

@Repository("scheduleDao")
public class ScheduleDao {
	@Autowired	//root-context.xml 에서 생성한 객체를 자동 연결함
	private SqlSessionTemplate sqlSessionTemplate;

	//스케줄 전체 조회
	public ArrayList<Schedule> selectScheduleList(Paging paging){
		List<Schedule> list = sqlSessionTemplate.selectList("noticeMapper.selectList", paging);
		return (ArrayList<Schedule>)list;
	}
	//스케줄 전체 조회
	public ArrayList<Schedule> selectTeamScheduleList(Paging paging){
		List<Schedule> list = sqlSessionTemplate.selectList("noticeMapper.selectList", paging);
		return (ArrayList<Schedule>)list;
	}
	//스케줄 전체 조회
	public ArrayList<Schedule> selectDeptScheduleList(Paging paging){
		List<Schedule> list = sqlSessionTemplate.selectList("noticeMapper.selectList", paging);
		return (ArrayList<Schedule>)list;
	}
	//스케줄 전체 조회
	public ArrayList<Schedule> selectMyScheduleList(Paging paging){
		List<Schedule> list = sqlSessionTemplate.selectList("noticeMapper.selectList", paging);
		return (ArrayList<Schedule>)list;
	}
	//스케줄 전체 조회
	public ArrayList<Schedule> selectWeeklyScheduleList(Paging paging){
		List<Schedule> list = sqlSessionTemplate.selectList("noticeMapper.selectList", paging);
		return (ArrayList<Schedule>)list;
	}
	
	
	//공지글번호로 한 개 조회 : 공지사항 상세보기용
	public Schedule selectSchedule(int noticeNo) {
		return sqlSessionTemplate.selectOne("noticeMapper.selectOne", noticeNo);
	}
	
	//새 공지글 등록
	public int insertSchedule(Schedule schedule) {
		return sqlSessionTemplate.insert("noticeMapper.insertNotice", schedule);
	}
	
	//공지글 수정
	public int updateSchedule(Schedule schedule) {
		return sqlSessionTemplate.update("noticeMapper.updateNotice", schedule);
	}
	
	//공지글 삭제
	public int deleteSchedule(int scheduleId) {
		return sqlSessionTemplate.delete("noticeMapper.deleteNotice", scheduleId);
	}

}
