package com.portpolio.board.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.portpolio.board.service.BoardService;
import com.portpolio.board.vo.BoardVO;

import lombok.extern.log4j.Log4j2;


@Controller
@RequestMapping("/board")
@Log4j2
public class BoardController {
	
	@Autowired
	@Qualifier("boardServiceImpl")
	private BoardService service;
	
	
	
	@RequestMapping("/list.do")
	// @ModelAttribute -> 전달 받은 파라메터를 JSP까지 전달해 준다. - Model에 자동으로 담긴다.
	public String list(PageObject pageObject, Model model) {
		log.info("게시판 리스트 ...............................");
//		System.out.println(10/0);
		model.addAttribute("list", service.list(pageObject));
		log.info(service.list(pageObject));
		return "board/list";
	}
	
	@RequestMapping("/view.do")
	// 전달되는 변수로 받을 때는 한 개씩 따로 따로 받는다.
	public String view(long no, int inc, Model model) {
		log.info("게시판 글보기 ...............................");
		log.info("no=" + no + ", inc= " + inc);
		model.addAttribute("vo", service.view(no, inc));
		return "board/view";
	}
	
	@GetMapping("/write.do")
	public String writeForm() {
		log.info("게시판 글쓰기 폼 ...............................");
		return "board/write";
	}
	
	@PostMapping("/write.do")
	public String write(BoardVO vo, RedirectAttributes rttr) {
		log.info("게시판 글쓰기 처리 ...............................");
		log.info(vo);
		service.write(vo);
		
		rttr.addFlashAttribute("msg", "글등록이 되었습니다.");
		
		return "redirect:list.do";
	}
	
	@GetMapping("/update.do")
	public String updateForm(long no, Model model) {
		log.info("게시판 글수정 폼 ...............................");
		model.addAttribute("vo", service.view(no, 0));
		return "board/update";
	}
	
	@PostMapping("/update.do")
	public String update(BoardVO vo, RedirectAttributes rttr) {
		log.info("게시판 글수정 처리 ...............................");
		service.update(vo);
		rttr.addFlashAttribute("msg", "글수정이 되었습니다.");
		return "redirect:view.do?no="+vo.getNo()+"&inc=0";
	}
	
	@PostMapping("/delete.do")
	// @RequestParam([name, defaultValue, required, value]) - 넘어오는 데이터의 이름이 변수와 다른 경우, 값이 넘어오지 않는 경우 기본 값, 필수 항목, 값 세팅)
	// 여러개 데이터를 받을 때 리스트로 받으면 클래스를 사용해야 한다.
//	public String delete(@RequestParam("no") ArrayList<Long> no) {
//	public String delete(long[] no) {
	public String delete(BoardVO vo, RedirectAttributes rttr) {
		log.info("게시판 글삭제 처리 ...............................");
//		log.info(Arrays.toString(no));
//		log.info(no);
		log.info(vo); // no, pw
		service.delete(vo);
		rttr.addFlashAttribute("msg", "글삭제가 되었습니다.");
		
		return "redirect:list.do";
	}
	
}
