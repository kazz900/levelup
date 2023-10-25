package com.gs.levelup.schedule.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
		return "schedule/calendar";
	}
	
	
	
	 //전체 스케줄 조회
	 
	 @RequestMapping("calendarList.do") 
	 public ModelAndView selectScheduleListMethod(
	 HttpSession session, HttpServletRequest request,
	 ModelAndView mv
	 ) { 
     Employee loginEmployee = (Employee)session.getAttribute("loginEmployee");
     String employeeId = loginEmployee.getEmployeeId();
     String teamId = loginEmployee.getTeamId();
     String departmentId = loginEmployee.getDepartmentId();
	 
	 try { ArrayList<Schedule> list = scheduleService.selectScheduleList(employeeId, teamId, departmentId); 
	 request.setAttribute("calendarList", list);
	 request.setAttribute("title", "일정 보기");
	 request.setAttribute("item", "달력");
	 request.setAttribute("subitem", "월간");
	 } 
	 catch (Exception e)
	 { e.printStackTrace(); } mv.setViewName("schedule/calendar");
	 
	  return mv; }
	 
				
			
	
	//스케줄 상세보기 조회
	public Schedule selectSchedule(String ScheduleId) {
		return null;
	}


	//스케줄 등록
	@RequestMapping(value="sinsert.do", method=RequestMethod.POST)
		public ResponseEntity<String> insertScheduleMethod(@RequestBody String param) throws ParseException, java.text.ParseException {
			//post 로 request body 에 기록된 json 문자열을 꺼내서 param 변수에 저장하라는 처리임
			logger.info("입력" + param);
			//param 에 저장된 json 문자열을 json 객체로 바꿈
			JSONParser jparser = new JSONParser();
			JSONObject job = (JSONObject)jparser.parse(param);
			
			
			String startd = (String)job.get("scheduleStartday");
			logger.info(startd);
			//String to TimeStamp
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSX");
			Date sdate = simpleDateFormat.parse((String)job.get("scheduleStartday"));
			Date edate = simpleDateFormat.parse((String)job.get("scheduleEndday"));

			// Date를 Timestamp로 변환
			Timestamp etimestamp = new Timestamp(edate.getTime());
			Timestamp stimestamp = new Timestamp(sdate.getTime());
			
			
			logger.info("타임스탬프" + etimestamp);
			logger.info("입력" + job);
			//json 객체가 가진 각 필드(property) 값을 추출해서, vo 객체(Notice)에 저장
			Schedule schedule = new Schedule();
			schedule.setScheduleId((String)job.get("scheduleId"));
			schedule.setEmployeeId((String)job.get("employeeId"));
			schedule.setDepartmentId((String)job.get("departmentId"));
			schedule.setTeamId((String)job.get("teamId"));
			schedule.setRankId((String)job.get("rankId"));
			schedule.setScheduleStartday(stimestamp);
			schedule.setScheduleEndday(etimestamp);
			schedule.setScheduleType(job.get("scheduleType").toString());
			schedule.setScheduleAddress((String)job.get("scheduleAddress"));
			schedule.setScheduleTheme((String)job.get("scheduleTheme"));
			schedule.setScheduleContent(job.get("scheduleContent").toString());
			
			
			//새 공지글 등록 처리용 메소드 실행
			int result = scheduleService.insertSchedule(schedule);
			
			//ResponseEntity<T> : 클라이언트에게 응답하는 용도의 객체임
			//뷰리졸버가 아닌 출력스트림으로 나감
			if(result > 0) {
				return new ResponseEntity<String>("success", HttpStatus.OK);
			}else {
				return new ResponseEntity<String>("failed", HttpStatus.REQUEST_TIMEOUT);
			}
		}
	
	//스케줄 수정
	@RequestMapping(value = "supdate.do", method = RequestMethod.POST)
	public ResponseEntity<String> updateSchedule(@RequestBody String param) throws ParseException, java.text.ParseException {
	    // post로 request body에 기록된 JSON 문자열을 꺼내서 param 변수에 저장

	    // param에 저장된 JSON 문자열을 JSON 객체로 변환
	    JSONParser jparser = new JSONParser();
	    JSONObject job = (JSONObject) jparser.parse(param);

		//String to TimeStamp
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSX");
		Date sdate = simpleDateFormat.parse((String)job.get("scheduleStartday"));
		Date edate = simpleDateFormat.parse((String)job.get("scheduleEndday"));

		// Date를 Timestamp로 변환
		Timestamp etimestamp = new Timestamp(edate.getTime());
		Timestamp stimestamp = new Timestamp(sdate.getTime());
		
		
		logger.info("타임스탬프" + etimestamp);
		logger.info("job" + job);
		//json 객체가 가진 각 필드(property) 값을 추출해서, vo 객체(Notice)에 저장
		Schedule schedule = new Schedule();
		schedule.setScheduleId((String)job.get("scheduleId"));
		schedule.setEmployeeId((String)job.get("employeeId"));
		schedule.setDepartmentId((String)job.get("departmentId"));
		schedule.setTeamId((String)job.get("teamId"));
		schedule.setRankId((String)job.get("rankId"));
		schedule.setScheduleStartday(stimestamp);
		schedule.setScheduleEndday(etimestamp);
		schedule.setScheduleType(job.get("scheduleType").toString());
		schedule.setScheduleAddress((String)job.get("scheduleAddress"));
		schedule.setScheduleTheme((String)job.get("scheduleTheme"));
		schedule.setScheduleContent(job.get("scheduleContent").toString());
		
		
		// 스케줄 업데이트 처리용 메소드 실행
		int result = scheduleService.updateSchedule(schedule);
		
		//ResponseEntity<T> : 클라이언트에게 응답하는 용도의 객체임
		//뷰리졸버가 아닌 출력스트림으로 나감
		if(result > 0) {
			return new ResponseEntity<String>("success", HttpStatus.OK);
		}else {
			return new ResponseEntity<String>("failed", HttpStatus.REQUEST_TIMEOUT);
		}

	   

	}
	//스케줄삭제
	@RequestMapping(value = "sdelete.do", method = RequestMethod.POST)
	public ResponseEntity<String> deleteSchedule(@RequestBody String param) throws ParseException {
	    // 스케줄 삭제 처리용 메소드 실행
		JSONParser jparser = new JSONParser();
	    JSONObject job = (JSONObject) jparser.parse(param);
	    
	    Schedule schedule = new Schedule();
	    schedule.setScheduleId((String)job.get("scheduleId"));
	    
	    int result = scheduleService.deleteSchedule(schedule);
	    

	    // ResponseEntity<T>: 클라이언트에게 응답하는 용도의 객체, 뷰 리졸버가 아닌 출력 스트림으로 나감
	    if (result > 0) {
	        return new ResponseEntity<String>("success", HttpStatus.OK);
	    } else {
	        return new ResponseEntity<String>("failed", HttpStatus.REQUEST_TIMEOUT);
	    }
	}


		
}
