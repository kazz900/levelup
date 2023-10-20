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
import com.gs.levelup.common.Paging;
import com.gs.levelup.employee.model.service.EmployeeService;
import com.gs.levelup.employee.model.vo.Employee;
import com.gs.levelup.inventory.model.service.InventoryService;
import com.gs.levelup.inventory.model.vo.Inventory;

@Controller
public class CaseItemChangeController {
	private static final Logger logger = LoggerFactory.getLogger(CaseItemChangeController.class);
	
	@Autowired
	private CaseItemChangeService cicService;

	@Autowired
	private InventoryService inventoryService;
	
	@Autowired
	private EmployeeService employeeService;
	
	// 뷰 페이지 이동 처리용 ---------------------------------------------------

		// 요청 처리용 ----------------------------------------------------------

	@RequestMapping(value = "ciclist.do", method = RequestMethod.GET)
	public String selectListMethod(@RequestParam(name = "page", required = false) String page, Model model) {

		int currentPage = 1;
		if (page != null) {
			currentPage = Integer.parseInt(page);
		}

		// 한 페이지 게시글 10개씩 출력되게 한다면
		int limit = 10;

		// 총 페이지 수 계산을 위한 게시글 총갯수 조회
		int listCount = cicService.selectListCount();

		// 페이지 관련 항목 계산 처리
		Paging paging = new Paging(listCount, currentPage, limit, "ciclist.do");
		paging.calculator();

		// 페이지에 출력할 목록 조회해 옴
		ArrayList<CaseItemChange> list = cicService.selectList(paging);

		if (list != null && list.size() > 0) {
			model.addAttribute("list", list);
			model.addAttribute("paging", paging);
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("limit", limit);
		} 
		return "empCase/empCaseItemChangeListView";
	}

	
	@RequestMapping(value="changeitem.do", method = RequestMethod.GET)
	public ModelAndView changeItemMethod(ModelAndView mv) {
		return mv;
	}
	
	//기안 작성 페이지로 이동
	@RequestMapping("cicform.do")
	public ModelAndView moveCaseItemChangeWritePage(Inventory itemdata, @RequestParam("managerId") String managerId, ModelAndView mv) {
		
		ArrayList<Inventory> ilist = inventoryService.selectAll();
		Employee manager = employeeService.selectManager(managerId);
		mv.addObject("manager", manager);
		mv.addObject("ilist", ilist);
		mv.addObject("itemdata", itemdata);
		mv.setViewName("empCase/empNewCaseView");
		return mv;
	}
	
	//기안 작성페이지 
	@RequestMapping(value="cicinsert.do", method = RequestMethod.POST)
	public String insertCaseItemChange(CaseItemChange caseItemChange,
										@RequestParam("employeeId") String employeeId,
										@RequestParam("employeeName") String employeeName,
										@RequestParam("managerId") String managerId,		
										@RequestParam(name="upfile", required=false) MultipartFile mfile,
										@RequestParam(name="originalItemName", required=false) String itemName,
										HttpServletRequest request,
										Model model) {		
		
		if (caseItemChange.getItemName().equals("잡템")) {
			System.out.println("잡템 아이템 변경함");
			caseItemChange.setItemId(0);
		}

		
		//첨부파일이 있을 때 저장 경로 지정
		String savePath = request.getSession().getServletContext().getRealPath("resources/case_upfiles");
		
		if(!mfile.isEmpty()) {
			//전송온 파일이름 추출함
			String fileName = mfile.getOriginalFilename();
			String renameFileName = null;
			
			//저장폴더에는 변경된 이름을 저장 처리함
			//파일 이름바꾸기함 : 년월일시분초.확장자
			if(fileName != null && fileName.length() > 0) {				
				//바꿀 파일명에 대한 문자열 만들기
				renameFileName = FileNameChange.change(fileName, 	"yyyyMMddHHmmss");
				logger.info("첨부파일명 확인 : " + fileName + ", " + renameFileName);
				try {	
					//저장 폴더에 파일명 바꾸기 처리
					mfile.transferTo(new File(savePath + "\\" + renameFileName));
				
				}catch(Exception e) {
					e.printStackTrace();
					model.addAttribute("message", "첨부파일 저장 실패!");
					return "common/error";
				}
			}  //파일명 바꾸기
			//board 객체에 첨부파일 정보 저장 처리
			caseItemChange.setAttachementFilename(renameFileName);
			
		} //첨부파일 있을 때	
		
		if(cicService.insertCaseItemChange(caseItemChange) > 0) {  
			//기안 작성 성공 시 기안 상세보기 페이지로 이동
			return "empCase/empCaseDetailView";
		}else {
			model.addAttribute("message", "기안 작성 실패!");
			return "common/error";
		}
	}
	
	
	
	
	//작성한 기안 상세보기 페이지 뷰
	@RequestMapping(value="cicdetail.do", method = RequestMethod.GET)
	public ModelAndView selectCaseItemChangeDetail(ModelAndView mv,
												 @RequestParam("documentId") String documentId,
												 @RequestParam(name="page", required=false) String page) {
		
		//출력할 페이지 
		int currentPage = 1;
		
		if(page != null) {
			currentPage = Integer.parseInt(page);					
		}
		
		CaseItemChange caseItemChange = cicService.selectCaseItemChange(documentId);		
		
		if(caseItemChange != null) {
			mv.addObject("caseItemChange", caseItemChange);
			mv.addObject("currentPage", currentPage);			
		
			mv.setViewName("empCase/empCaseDetailView");
		}else {
			mv.addObject("message", "아이템 변경 기안 상세 페이지 보기 실패");
			mv.setViewName("common/error");
		}
		
		
		return mv;
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
