package org.serene.latte.controller;

import org.serene.latte.dto.UserDTO;
import org.serene.latte.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;

@Controller
@SessionAttributes("userDTO")
public class UserController {
	
	@Autowired
	UserService userService;

	@RequestMapping("/")
	public String home(){
		return "main/home";
	}
	
	@RequestMapping("loginform.html")
	public String loginform(){
		return "user/login";
	}
	
	@RequestMapping(value="loginproc.html", method=RequestMethod.POST)
	public String loginproc(@RequestParam String userId, @RequestParam String password, Model model){
		
		UserDTO userDTO = userService.userLogin(userId, password);
		
		if(userDTO!=null){
			model.addAttribute("userDTO", userDTO);
			return "main/home";
		} else {
			model.addAttribute("msg", "회원정보를 확인해주세요");
			return "user/login";
		}
	}
	
	@RequestMapping("registerform.html")
	public String registerform(){
		return "user/register";
	}
	
	@RequestMapping(value="registerproc.html", method=RequestMethod.POST)
	public String registerproc(UserDTO userDTO, SessionStatus sessionStatus){
		
		userService.userRegister(userDTO);
		
		sessionStatus.setComplete();
		return "redirect:loginform.html";
	}
	
	@RequestMapping("editform.html")
	public String editform(){
		return "user/userEdit";
	}
	
	@RequestMapping(value="editproc.html", method=RequestMethod.POST)
	public String editproc(UserDTO userDTO, SessionStatus sessionStatus){
		
		userService.userUpdate(userDTO);
		
		return "redirect:/";
	}
	
	@RequestMapping("logout.html")
	public String logout(WebRequest request, SessionStatus sessionStatus){
		sessionStatus.setComplete();
		request.removeAttribute("userDTO", WebRequest.SCOPE_SESSION);
		request.removeAttribute("pageDTO", WebRequest.SCOPE_SESSION);
		return "redirect:/";
	}
	
}
