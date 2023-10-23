package com.gs.levelup.schedule.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gs.levelup.employee.model.vo.Employee;
import com.gs.levelup.schedule.model.service.ScheduleService;
import com.gs.levelup.schedule.model.vo.Schedule;

@Controller
public class ScheduleController {
	private static final Logger logger = LoggerFactory.getLogger(ScheduleController.class);
	private static final String String = null;
	
	@Autowired
	private ScheduleService scheduleService;
	
	
	// Calendar test 페이지 이동처리용
	@RequestMapping("calendar.do")
	public String moveCalendar() {
		return "schedule/calendarPractice";
	}
	
	//전체 스케줄 조회
	@RequestMapping("calendarList.do")
		public ModelAndView selectScheduleListMethod( 
				HttpSession session,
				HttpServletRequest request,
				ModelAndView mv) {
				Employee loginEmployee = (Employee)session.getAttribute("loginEmployee");
				String teamId = loginEmployee.getTeamId();
				String departmentId = loginEmployee.getDepartmentId();
			
			
			try {
				ArrayList<Schedule> list = scheduleService.selectScheduleList();
				request.setAttribute("calendarList", list);
			} catch (Exception e) {
				e.printStackTrace();
			}
				mv.setViewName("schedule/calendarPractice");
				
				return mv;
			}
				
			
	
	//스케줄 상세보기 조회
	public Schedule selectSchedule(String ScheduleId) {
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
