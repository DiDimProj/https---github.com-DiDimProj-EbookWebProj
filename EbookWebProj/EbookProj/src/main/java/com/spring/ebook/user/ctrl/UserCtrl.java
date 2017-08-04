package com.spring.ebook.user.ctrl;

import java.util.Locale;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.spring.ebook.model.user.vo.UserVO;
import com.spring.ebook.user.service.UserService;

@Controller
@SessionAttributes("loginUser")
public class UserCtrl {
	
	@Resource(name="userService")
	private UserService serv;
	
	@RequestMapping(value = "mypage.do", method = RequestMethod.GET)
	public String myPage(Locale locale, Model model) {
		System.out.println("Ctrl User");
		return "mypage";
	}
	
	@RequestMapping(value = "join.do", method = RequestMethod.GET)
	public String join(Locale locale, Model model) {
		System.out.println("Ctrl User");
		return "join";
	}
	
	@RequestMapping("/login.do")
	public String login(UserVO user, Model model) {
		System.out.println("Ctrl login");
		UserVO result = serv.login(user);
		String path = null;
		if (result != null) {
			model.addAttribute("loginUser",result);
			path = "indexpage";
		} else
			path = "join";
		return path;
	}
	
	@RequestMapping("/logout.do")
	public String logout(SessionStatus status) {
		System.out.println("ctrl logout");
		status.setComplete();
		return "redirect:/main.do";
	}
	
}
