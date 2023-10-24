package com.gs.levelup.schedule.model.service;

import java.util.ArrayList;

import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;
import com.gs.levelup.schedule.model.vo.Schedule;

public interface ScheduleService {
	public ArrayList<Schedule> selectScheduleList();
	public ArrayList<Schedule> selectTeamScheduleList(String teamId);
	public ArrayList<Schedule> selectDeptScheduleList(String departmentId);
	public ArrayList<Schedule> selectMyScheduleList(String employeeId);
	public Schedule selectSchedule(String scheduleId);
	public int insertSchedule(Schedule schedule);
	public int updateSchedule(Schedule schedule);
	public int deleteSchedule(String scheduleId);
}
