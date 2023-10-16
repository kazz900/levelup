package com.gs.levelup.schedule.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gs.levelup.common.Paging;
import com.gs.levelup.schedule.model.vo.Schedule;

@Controller
public class ScheduleController {
	private static final Logger logger = LoggerFactory.getLogger(ScheduleController.class);
	
	// Calendar test 페이지 이동처리용
	@RequestMapping("calendar.do")
	public String moveCalendar() {
		return "schedule/calendar";
	}
	
	//전체 스케줄 조회
	public ArrayList<Schedule> selectScheduleList(Paging paging){
		return null;
	}
	
	//스케줄 상세보기 조회
	public Schedule selectSchedule(int ScheduleNo) {
		return null;
	}
	
	
	//스케줄 등록
	@RequestMapping("sinsert.do")
	public String scheduleInsertMethod(
			@RequestParam("Scheduleno") int Scheduleno,
			@RequestParam(name="rfile", required=false) String renameFileName,
			HttpServletRequest request, Model model) {
	
			return "common/error";
		
		
	}
	//스케줄 수정
	@RequestMapping("supdate.do")
	public String scheduleUpdateMethod(
			@RequestParam("Scheduleno") int Scheduleno,
			@RequestParam(name="rfile", required=false) String renameFileName,
			HttpServletRequest request, Model model) {
	
			return "common/error";
		
		
	}
	//스케줄 삭제
		@RequestMapping("scheduledelete.do")
		public String scheduleDeleteMethod(
				@RequestParam("Scheduleno") int Scheduleno,
				@RequestParam(name="rfile", required=false) String renameFileName,
				HttpServletRequest request, Model model) {
		
				return "common/error";
			
			
		}
		
}
