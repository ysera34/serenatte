package org.serene.latte.controller;

import java.io.InputStream;

import org.serene.latte.dto.BoardDTO;
import org.serene.latte.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping("newContents.html")
	public String newContents(){
		return "board/newContents";
	}
	
	@RequestMapping("boardList.html")
	public String boardList(){
		return "board/boardList";
	}
	
	@RequestMapping(value="addContents", method=RequestMethod.POST)
	public String addContents(@RequestParam String title, @RequestParam String content){
		
		
		boardService.addContents(title, content);
		
		return "board/boardList";
	}
}
