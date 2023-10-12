package com.gs.levelup.schedule.model.service;

import java.util.ArrayList;

import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;
import com.gs.levelup.notice.model.vo.Notice;
import com.gs.levelup.schedule.model.vo.Schedule;

public interface ScheduleService {
	public ArrayList<Schedule> selectScheduleList(Paging paging);
	public ArrayList<Schedule> selectTeamScheduleList(Paging paging);
	public ArrayList<Schedule> selectDeptScheduleList(Paging paging);
	public ArrayList<Schedule> selectMyScheduleList(Paging paging);
	public ArrayList<Schedule> selectWeeklyScheduleList(Paging paging);
	public Schedule selectSchedule(int noticeNo);
	public int insertSchedule(Schedule schedule);
	public int updateSchedule(Schedule schedule);
	public int deleteSchedule(int scheduleId);
}
