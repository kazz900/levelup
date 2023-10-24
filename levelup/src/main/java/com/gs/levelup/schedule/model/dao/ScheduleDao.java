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
	public ArrayList<Schedule> selectScheduleList(){
		List<Schedule> list = sqlSessionTemplate.selectList("scheduleMapper.selectScheduleList");
		return (ArrayList<Schedule>)list;
	}
	//팀 스케줄 전체 조회
	public ArrayList<Schedule> selectTeamScheduleList(){
		List<Schedule> list = sqlSessionTemplate.selectList("scheduleMapper.selectTeamScheduleList");
		return (ArrayList<Schedule>)list;
	}
	//부서 스케줄 전체 조회
	public ArrayList<Schedule> selectDeptScheduleList(){
		List<Schedule> list = sqlSessionTemplate.selectList("scheduleMapper.selectDeptScheduleList");
		return (ArrayList<Schedule>)list;
	}
	//내 스케줄 전체 조회
	public ArrayList<Schedule> selectMyScheduleList(){
		List<Schedule> list = sqlSessionTemplate.selectList("scheduleMapper.selectMyScheduleList");
		return (ArrayList<Schedule>)list;
	}
	
	
	
	//스케줄 한 개 조회 : 공지사항 상세보기용
	public Schedule selectSchedule(String scheduleId) {
		return sqlSessionTemplate.selectOne("scheduleMapper.selectSchedule", scheduleId);
	}
	
	//새 스케줄 등록
	public int insertSchedule(Schedule schedule) {
		return sqlSessionTemplate.insert("scheduleMapper.insertSchedule", schedule);
	}
	
	//스케줄 수정
	public int updateSchedule(Schedule schedule) {
		return sqlSessionTemplate.update("scheduleMapper.updateSchedule", schedule);
	}
	
	//스케줄 삭제
	public int deleteSchedule(String scheduleId) {
		return sqlSessionTemplate.delete("scheduleMapper.deleteSchedule", scheduleId);
	}

}
