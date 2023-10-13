package com.gs.levelup.schedule.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gs.levelup.common.Paging;
import com.gs.levelup.notice.model.vo.Notice;

public class ScheduleController {
	
	//전체 스케줄 조회
	public ArrayList<Notice> selectScheduleList(Paging paging){
		return null;
	}
	
	//스케줄 상세보기 조회
	public Notice selectSchedule(int noticeNo) {
		return null;
	}
	
	
	//스케줄 등록
	@RequestMapping("ndelete.do")
	public String scheduleInsertMethod(
			@RequestParam("noticeno") int noticeno,
			@RequestParam(name="rfile", required=false) String renameFileName,
			HttpServletRequest request, Model model) {
	
			return "common/error";
		
		
	}
	//스케줄 수정
	@RequestMapping("ndelete.do")
	public String scheduleUpdateMethod(
			@RequestParam("noticeno") int noticeno,
			@RequestParam(name="rfile", required=false) String renameFileName,
			HttpServletRequest request, Model model) {
	
			return "common/error";
		
		
	}
	//스케줄 삭제
		@RequestMapping("ndelete.do")
		public String scheduleDeleteMethod(
				@RequestParam("noticeno") int noticeno,
				@RequestParam(name="rfile", required=false) String renameFileName,
				HttpServletRequest request, Model model) {
		
				return "common/error";
			
			
		}
		
}
