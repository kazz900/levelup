package com.gs.levelup.schedule.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.gs.levelup.common.Paging;
import com.gs.levelup.schedule.model.dao.ScheduleDao;
import com.gs.levelup.schedule.model.vo.Schedule;

public class ScheduleServiceImpl {
	@Autowired	//자동 DI 처리됨 : 자동 객체 생성됨
	private ScheduleDao scheduleDao;
	
	public ArrayList<Schedule> selectScheduleList(Paging paging){
		return scheduleDao.selectScheduleList(paging);
	}
	public ArrayList<Schedule> selectTeamScheduleList(Paging paging){
		return scheduleDao.selectTeamScheduleList(paging);
	}
	public ArrayList<Schedule> selectDeptScheduleList(Paging paging){
		return scheduleDao.selectDeptScheduleList(paging);
	}
	public ArrayList<Schedule> selectMyScheduleList(Paging paging){
		return scheduleDao.selectMyScheduleList(paging);
	}
	
	public ArrayList<Schedule> selectWeeklyScheduleList(Paging paging){
		return scheduleDao.selectWeeklyScheduleList(paging);
	}
	public Schedule selectSchedule(int noticeNo) {
		return scheduleDao.selectSchedule(noticeNo);
	}
	public int insertSchedule(Schedule schedule) {
		return scheduleDao.insertSchedule(schedule);
	}
	public int updateSchedule(Schedule schedule) {
		return scheduleDao.updateSchedule(schedule);
	}
	public int deleteSchedule(int scheduleId) {
		return scheduleDao.deleteSchedule(scheduleId);
	}
	
	
	
}
