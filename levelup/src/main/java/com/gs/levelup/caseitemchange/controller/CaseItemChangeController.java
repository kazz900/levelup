package com.gs.levelup.caseitemchange.controller;

import java.io.File;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.gs.levelup.caseitemchange.model.service.CaseItemChangeService;
import com.gs.levelup.caseitemchange.model.vo.CaseItemChange;
import com.gs.levelup.common.FileNameChange;
import com.gs.levelup.employee.model.service.EmployeeService;
import com.gs.levelup.employee.model.vo.Employee;

@Controller
public class CaseItemChangeController {
	private static final Logger logger = LoggerFactory.getLogger(CaseItemChangeController.class);
	
	@Autowired
	private CaseItemChangeService cicService;
	
	@Autowired
	private EmployeeService empService;
	
	@RequestMapping(value="changeitem.do", method = RequestMethod.GET)
	public ModelAndView changeItemMethod(ModelAndView mv) {
		return mv;
	}
	
	//기안 작성 페이지로 이동
	
	@RequestMapping("cicform.do")
	public String moveCaseItemChangeWritePage(Employee employee, Model model) {
		
		return "empCase/empNewCaseView";
		
		
	}
	
	//기안 작성페이지 
	@RequestMapping(value="cicinsert.do", method = RequestMethod.POST)
	public String insertCaseItemChange(CaseItemChange caseItemChange,
										@RequestParam(name="file", required=false) MultipartFile mfile,
										HttpServletRequest request,
										Model model) {
		
		//첨부파일이 있을 때 저장 경로 지정
		String savePath = request.getSession().getServletContext().getRealPath("resources/case_upfiles");
		
		//첨부파일이 있을 때
		if( !mfile.isEmpty() ) {
			//전송 온 파일 이름 추출
			String fileName = mfile.getOriginalFilename();
			String renameFileName = null;
			
			//저장폴더에 이름 저장 처리
			if(fileName != null && fileName.length() > 0) {
				renameFileName = FileNameChange.change(fileName, "yyyyMMddHHmmss");
				try {
					mfile.transferTo(new File(savePath + "\\" + renameFileName));
				}catch(Exception e) {
					e.printStackTrace();
					model.addAttribute("message", "첨부파일 저장 실패");
					return "common/error";
				
				}
			}
			//caseitemchange 객체에 파일 정보 저장
			caseItemChange.setAttachementFilename(renameFileName);
			
		}
		if(cicService.insertCaseItemChange(caseItemChange) > 0) {
			//기안 작성 성공 시 기안 상세보기 페이지로 이동
			return "empCase/empCaseDetailView";
		}else {
			model.addAttribute("message", "기안 작성 실패!");
			return "common/error";
		}
	}

	@RequestMapping(value="cicselect.do", method = RequestMethod.GET)
	public ModelAndView selectCaseItemChange(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value="cicupdate.do", method = RequestMethod.GET)
	public ModelAndView updateCaseItemChange(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value="cicdel.do", method = RequestMethod.GET)
	public ModelAndView deleteCaseItemChange(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value="ciclist.do", method = RequestMethod.GET)
	public ModelAndView selectList(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value="cicsearchemp.do", method = RequestMethod.GET)
	public ModelAndView selectSearchEmployeeId(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value="cicsearchwriter.do", method = RequestMethod.GET)
	public ModelAndView selectSearchWriter(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value="cicsearchtitle.do", method = RequestMethod.GET)
	public ModelAndView selectSearchTitle(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value="cicsearchdate.do", method = RequestMethod.GET)
	public ModelAndView selectSearchDate(ModelAndView mv) {
		return mv;
	}
}
