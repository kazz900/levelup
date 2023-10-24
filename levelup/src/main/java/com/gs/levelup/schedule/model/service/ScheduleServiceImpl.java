package com.gs.levelup.schedule.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gs.levelup.schedule.model.dao.ScheduleDao;
import com.gs.levelup.schedule.model.vo.Schedule;

@Service("scheduleService")
public class ScheduleServiceImpl implements ScheduleService{
	@Autowired	//자동 DI 처리됨 : 자동 객체 생성됨
	private ScheduleDao scheduleDao;
	
	@Override
	public ArrayList<Schedule> selectScheduleList(String employeeId){
		return scheduleDao.selectScheduleList(employeeId);
	}
	@Override
	public ArrayList<Schedule> selectTeamScheduleList(String teamId) {
		return scheduleDao.selectTeamScheduleList(teamId);
	}
	@Override
	public ArrayList<Schedule> selectDeptScheduleList(String departmentId) {
		return scheduleDao.selectTeamScheduleList(departmentId);
	}
	@Override
	public ArrayList<Schedule> selectMyScheduleList(String employeeId) {
		return scheduleDao.selectTeamScheduleList(employeeId);
	}
	@Override
	public Schedule selectSchedule(String scheduleId) {
		return scheduleDao.selectSchedule(scheduleId);
	}
	@Override
	public int insertSchedule(Schedule schedule) {
		return scheduleDao.insertSchedule(schedule);
	}
	@Override
	public int updateSchedule(Schedule schedule) {
		return scheduleDao.updateSchedule(schedule);
	}
	@Override
	public int deleteSchedule(String scheduleId) {
		return scheduleDao.deleteSchedule(scheduleId);
	}
	
	
	
	
}
