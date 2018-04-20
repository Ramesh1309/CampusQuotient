package com.CampusQuotient.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.CampusQuotient.POJO.LoginPOJO;
import com.CampusQuotient.repo.Repository;
@Controller
@RequestMapping("/")
public class LoginController {
	@Autowired
	private Repository repo;
	@ResponseBody
	@GetMapping("/")
	public ModelAndView view() {
		ModelAndView mv= new ModelAndView();
		mv.setViewName("Login");
		return mv;
	}
	
		
	}


