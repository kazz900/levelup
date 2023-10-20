package com.gs.levelup._case.controller;

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

import com.gs.levelup._case.model.service.CaseService;
import com.gs.levelup._case.model.vo.Case;
import com.gs.levelup.character.model.service.CharacterService;
import com.gs.levelup.common.FileNameChange;
import com.gs.levelup.common.Paging;
import com.gs.levelup.employee.model.service.EmployeeService;
import com.gs.levelup.employee.model.vo.Employee;
import com.gs.levelup.inventory.model.service.InventoryService;
import com.gs.levelup.inventory.model.vo.Inventory;

@Controller
public class CaseController {
private static final Logger logger = LoggerFactory.getLogger(CaseController.class);
	
	@Autowired
	private CaseService caseService;

	@Autowired
	private InventoryService inventoryService;
	
	@Autowired
	private EmployeeService employeeService;
	
	@Autowired
	private CharacterService characterService;
	
	// 뷰 페이지 이동 처리용 ---------------------------------------------------

		// 요청 처리용 ----------------------------------------------------------

	@RequestMapping(value = "clist.do", method = RequestMethod.GET)
	public ModelAndView selectListMethod(@RequestParam(name = "page", required = false) String page, ModelAndView mv) {

		int currentPage = 1;
		if (page != null) {
			currentPage = Integer.parseInt(page);
		}

		// 한 페이지 게시글 10개씩 출력되게 한다면
		int limit = 10;

		// 총 페이지 수 계산을 위한 게시글 총갯수 조회
		int listCount = caseService.selectListCount();

		// 페이지 관련 항목 계산 처리
		Paging paging = new Paging(listCount, currentPage, limit, "ciclist.do");
		paging.calculator();

		// 페이지에 출력할 목록 조회해 옴
		ArrayList<Case> list = caseService.selectList(paging);

		if (list != null && list.size() > 0) {
			mv.addObject("list", list);
			mv.addObject("paging", paging);
			mv.addObject("currentPage", currentPage);
			mv.addObject("limit", limit);
			mv.setViewName("empCase/empCaseListView");
		}
		return mv;
	}

	
	@RequestMapping(value="changeitem.do", method = RequestMethod.GET)
	public ModelAndView changeItemMethod(ModelAndView mv) {
		return mv;
	}
	
	// TODO : 최유미 확인 필요-------------------------------------------------------
	
	
	
	//기안 작성 페이지로 이동
	@RequestMapping("cicform.do")
	public ModelAndView moveCaseItemChangeWritePage(Case _case, 
													Inventory itemdata,													
													@RequestParam("charId") int charId,
													@RequestParam("managerId") String managerId, 
													ModelAndView mv) {
				
		ArrayList<Inventory> ilist = inventoryService.selectAll();
		Employee manager = employeeService.selectManager(managerId);
		com.gs.levelup.character.model.vo.Character character = characterService.selectCharacter(charId);
		
		if(_case.getCaseType().equals("1")) {
			mv.addObject("manager", manager);
			mv.addObject("ilist", ilist);
			mv.addObject("itemdata", itemdata);
			mv.addObject("character", character);
		
			mv.setViewName("empCase/empNewChangeCaseView");
			
		}else if (_case.getCaseType().equals("2")) {
			mv.addObject("manager", manager);
			mv.addObject("ilist", ilist);
			mv.addObject("itemdata", itemdata);
			mv.addObject("character", character);
			
			mv.setViewName("empCase/empNewDelCaseView");
		}
				
		return mv;
	}
	
	
	
	//기안 작성페이지 
	@RequestMapping(value="cinsert.do", method = RequestMethod.POST)
	public String insertCaseItemChange(Case _case,
										@RequestParam("caseWriterId") String employeeId,
										@RequestParam("caseWriterName") String employeeName,											
										@RequestParam(name="upfile", required=false) MultipartFile mfile,
										@RequestParam(name="originalItemName", required=false) String itemName,
										HttpServletRequest request,
										Model model) {		
	
		
		if (_case.getOriginalItemName().equals("잡템")) {
			System.out.println("잡템 아이템 변경함");
			_case.setOriginalItemId(0);
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
			_case.setAttachmentFileName(renameFileName);
			
		} //첨부파일 있을 때	
		
		if(caseService.insertCase(_case) > 0) {  
			//기안 작성 성공 시 기안 상세보기 페이지로 이동
			return "empCase/empCaseDetailView";
		}else {
			model.addAttribute("message", "기안 작성 실패!");
			return "common/error";
		}
	}
	
	
	
	
	//작성한 기안 상세보기 페이지 뷰
	@RequestMapping(value="cdetail.do", method = RequestMethod.GET)
	public ModelAndView selectCaseItemChangeDetail(ModelAndView mv,
												 @RequestParam("documentId") String documentId,
												 @RequestParam(name="page", required=false) String page) {
		
		//출력할 페이지 
		int currentPage = 1;
		
		if(page != null) {
			currentPage = Integer.parseInt(page);					
		}
		
		Case caseItemChange = caseService.selectCase(documentId);		
		
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
}
