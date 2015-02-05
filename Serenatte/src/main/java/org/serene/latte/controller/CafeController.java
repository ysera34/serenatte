package org.serene.latte.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CafeController {
	
	@RequestMapping("enCafe.html")
	public String enCafe(){
		return "cafe/enCafe";
	}
	@RequestMapping("cafeList.html")
	public String cafeList(){
		return "cafe/cafeList";
	}
	@RequestMapping("deCafe.html")
	public String deCafe(){
		return "cafe/deCafe";
	}
}