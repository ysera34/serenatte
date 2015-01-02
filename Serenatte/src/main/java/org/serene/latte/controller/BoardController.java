package org.serene.latte.controller;

import java.util.List;

import javax.annotation.Resource;

import org.serene.latte.dto.BoardDTO;
import org.serene.latte.pojo.ConvertType;
import org.serene.latte.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
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
	public String boardList(BoardDTO boardDTO, Model model){
		
		List<BoardDTO> list = boardService.boardList();
		
		//날짜 형식 변경
		list = convertType.convertDateType(list);
		
		model.addAttribute("boardList", list);
		return "board/boardList";
	}
	
	//select test
	@RequestMapping("boardSelect.html")
	public String boardSelect(BoardDTO boardDTO, Model model){
		
		boardDTO = boardService.boardSelect();
		model.addAttribute("boardDTO", boardDTO);
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
}
