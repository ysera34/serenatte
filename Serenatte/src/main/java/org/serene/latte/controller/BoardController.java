package org.serene.latte.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

	@RequestMapping("newContents.html")
	public String newContents(){
		return "board/newContents";
	}
}
