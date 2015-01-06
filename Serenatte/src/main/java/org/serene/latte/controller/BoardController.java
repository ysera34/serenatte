package org.serene.latte.controller;

import java.util.List;

import javax.annotation.Resource;

import org.serene.latte.dto.BoardDTO;
import org.serene.latte.dto.PageDTO;
import org.serene.latte.pojo.ConvertType;
import org.serene.latte.pojo.MakePage;
import org.serene.latte.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@Resource(name="convertType")
	ConvertType convertType;
	
	@Resource(name="makePage")
	MakePage makePage;
	
	@RequestMapping("newContents.html")
	public String newContents(){
		return "board/newContents";
	}
	
	/*
	 * select all contents
	 * 모든 글들을 select
	 * 모든글의 갯수 파악, page갯수 정하기
	 */
	@RequestMapping("boardList.html")
	public String boardList(BoardDTO boardDTO, PageDTO pageDTO,
			Model model){

		//페이징
		if(pageDTO.getPageNo()==0)
			pageDTO.setPageNo(1);
		//select option에서 값 받기, 생략하면 10으로 default
		if (pageDTO.getPageSize()==0)
			pageDTO.setPageSize(10);
		pageDTO.setPageSize(pageDTO.getPageSize());
		pageDTO.setTotalCount(boardService.makePage());
		pageDTO = makePage.makePaging(pageDTO);
		model.addAttribute("pageDTO", pageDTO);
		
		int startNum = (pageDTO.getPageNo()-1)*pageDTO.getPageSize()+1;
		int endNum = pageDTO.getPageNo()*pageDTO.getPageSize();
		List<BoardDTO> list = boardService.boardList(startNum, endNum);
		
		//날짜 형식 변경
		list = convertType.convertDateType(list);
		model.addAttribute("boardList", list);

		return "board/boardList";
	}
	
	/*
	 * insert new contents
	 */
	@RequestMapping(value="addContents.html", method=RequestMethod.POST)
	public String addContents(@RequestParam String title, @RequestParam String content,
			@RequestParam String userId){
		
		boardService.addContents(title, content, userId);

		return "redirect:boardList.html";
	}
	
	/*
	 * contentForm
	 * a href="viewContent.html?listNum=${boardDTO.listNum}"
	 */
	@RequestMapping(value="viewContent.html", method=RequestMethod.GET)
	public String viewContent(@RequestParam String listNum, BoardDTO boardDTO, Model model){
		
		boardDTO = boardService.viewContent(listNum);
		
		model.addAttribute("boardDTO", boardDTO);
		
		return "board/contentForm";
	}
	
	
	
	
}
