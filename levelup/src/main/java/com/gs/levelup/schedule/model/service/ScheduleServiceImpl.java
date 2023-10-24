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
	
	public ArrayList<Schedule> selectScheduleList(){
		return scheduleDao.selectScheduleList();
	}
	public ArrayList<Schedule> selectTeamScheduleList(){
		return scheduleDao.selectTeamScheduleList();
	}
	public ArrayList<Schedule> selectDeptScheduleList(){
		return scheduleDao.selectDeptScheduleList();
	}
	public ArrayList<Schedule> selectMyScheduleList(){
		return scheduleDao.selectMyScheduleList();
	}
	
	public Schedule selectSchedule(String scheduleId) {
		return scheduleDao.selectSchedule(scheduleId);
	}
	public int insertSchedule(Schedule schedule) {
		return scheduleDao.insertSchedule(schedule);
	}
	public int updateSchedule(Schedule schedule) {
		return scheduleDao.updateSchedule(schedule);
	}
	public int deleteSchedule(String scheduleId) {
		return scheduleDao.deleteSchedule(scheduleId);
	}
	@Override
	public ArrayList<Schedule> selectTeamScheduleList(String teamId) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public ArrayList<Schedule> selectDeptScheduleList(String departmentId) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public ArrayList<Schedule> selectMyScheduleList(String employeeId) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
